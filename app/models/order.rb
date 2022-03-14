class Order < ApplicationRecord
    has_many :order_items
    before_save :set_subtotal
    belongs_to :user
    scope :lastest, ->{order created_at: :DESC}
    def subtotal
      order_items.collect { |order_item| order_item.valid? ? order_item.price * order_item.quantity : 0 }.sum
    end

    def lastest; end
    private
  
    def set_subtotal
      self[:subtotal] = subtotal
    end 
end
