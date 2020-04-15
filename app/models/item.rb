class Item < ApplicationRecord
    belongs_to :category
    # belongs_to :seller, class_name: "User", foreign_key: "user_id"
    has_many :cart_items
    validates :name, :description, :price, :category, presence: true
    validates :description, length: { minimum: 5, maximum: 255 }
    validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
    before_save :set_default_quantity

    def set_default_quantity
        self.quantity ||= 1
    end
end
