class Order < ApplicationRecord
  belongs_to :cart

  has_many :order_items
end
