# app/models/product.rb

class Product < ApplicationRecord
    # Other attributes...
  
    belongs_to :category
    attribute :category_id, :integer

    has_many :order_items

    validates :name, presence: true
    validates :description, presence: true
    validates :price, presence: true
    validates :size, presence: true
    validates :stock_quantity, presence: true
    validates :brand, presence: true
    validates :color, presence: true
  
  end
  