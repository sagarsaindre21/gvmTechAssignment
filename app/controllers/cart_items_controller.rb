#CartItemsController
class CartItemsController < ApplicationController
  before_action :authenticate_user!, only: [:add_product_to_cart]
  
  def add_product_to_cart
    return error_message unless current_user
    cart = CartItem.create(user_id: current_user.id, product_id: products_params)

    respond_to do |format|
      format.json { render json: { cart_id: cart.try(:id) }, status: 200 }
    end
  end

  private
  def products_params
    params.require(:id)
  end
end
