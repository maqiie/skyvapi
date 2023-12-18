# app/controllers/carts_controller.rb
class CartsController < ApplicationController
  def add_to_cart
    product = Product.find(params[:product_id])
    quantity = params[:quantity].to_i

    user = current_user
    cart = user.cart || user.create_cart
    order = cart.orders.find_or_create_by(status: 'open')
    order_item = order.order_items.build(product: product, quantity: quantity)

    if order_item.save
      render json: { message: 'Product added to cart successfully' }
    else
      render json: { error: 'Failed to add product to cart', details: order_item.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
