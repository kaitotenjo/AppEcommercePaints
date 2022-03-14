module ApplicationHelper
    include Pagy::Frontend
    def current_user
      if (user_id = session[:user_id])
        @current_user ||= User.find_by(id: user_id)
      elsif (user_id = cookies.signed[:user_id])
        user = User.find_by(id: user_id)
        if user&.authenticated?(:remember, cookies[:remember_token])
        log_in user
        @current_user = user
        end
      end
    end

    def current_order
      if current_user.nil?
        Order.new
      else
        # Use Find by id to avoid potential errors
        if Order.find_by(user_id: current_user.id).nil?
          Order.create(user_id: current_user.id)
        else
          Order.find_by(user_id: current_user.id)
        end
      end
    end
end
