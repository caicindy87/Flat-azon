class Item < ApplicationRecord
    belongs_to :category
    # belongs_to :seller, class_name: "User", foreign_key: "user_id"
    has_many :cart_items
end
