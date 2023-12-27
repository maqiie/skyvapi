class Order < ApplicationRecord
  belongs_to :cart
  validates :cart_id, presence: true

  has_many :order_items
end
