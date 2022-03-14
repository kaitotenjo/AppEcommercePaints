class Paint < ApplicationRecord
    has_attached_file :paint_img,
                    styles: {paint_index: "250x350>", paint_show: "325x475>"},
                    default_url: "/images/:style/missing.png"
    
    scope :lastest, ->{order created_at: :DESC}
    scope :search, ->(q){where "name LIKE '%#{q}%'"}
    scope :order_by_name, ->{order name: :asc}
    has_many :order_items
    has_many :comments
    def lastest; end
    def self.search_by(search_term)
        where("LOWER(name) LIKE :search_term",
        search_term:"%#{search_term}%")
    end
end
