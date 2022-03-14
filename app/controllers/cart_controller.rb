class CartController < ApplicationController
  skip_before_action :verify_authenticity_token

  before_action :load_order, except: [:index, :new, :create ,:update,]
  before_action :load_user, only: :admin_cart

  def update_status
    @order=Order.find_by_user_id(current_user.id)
    @order.update_attributes(status: "1")
    @payment=Payment.new(order_id:@order.id,user_id:current_user.id)
    @payment.save
  end

  def create
  end

  def show
    @order_items = current_order.order_items
  end


  def destroy
    if @order.destroy
      flash[:success] = "order deleted"
    else
      flash[:error] = " delete fails"
    end
  end

  def admin_cart
    @orders= Order.lastest
  end

  private

  def load_order
    @order = Order.find_by_id(session[:order_id])
    return if @order
    flash[:warming] = "order not found"
  end

  def load_user
    @users = User.find_by_id (params[:user_id])
    return if @user
    flash[:warming] = "user not found"
  end

  def card_param
    params.require(:manager_carts).permit( :status, :user_id)
  end
end
