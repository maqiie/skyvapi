class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product
  validates :cart, presence: true
  belongs_to :cart, optional: true

end
