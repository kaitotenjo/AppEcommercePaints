module OrderItemsHelper
	def load_order_session order
		session[:order_id] = order.id
	end

end
