class OrderItem < ApplicationRecord
    belongs_to :paint
    belongs_to :order
    before_save :set_price
    before_save :set_total
  
    def price
      # If there is a record
      if persisted?
        self[:price]
      else
        paint.price
      end
    end
  
    def total
      price * quantity
    end
  
    private
  
    def set_price
      self[:price] = price
    end
  
    def set_total
      self[:total] = total * quantity
    end
end
