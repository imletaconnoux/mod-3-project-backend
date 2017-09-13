class Api::V1::ListsController < ApplicationController
  def index
    @lists = List.all
    render json: @lists, status: 200
  end

  def update
    @list = List.all[0]

    if params["product"]
      itemId = params["product"]["itemId"]
      product_to_add = Product.all.find_by(item_id: itemId)
      @list.products << product_to_add
    elsif params["productId"]
      itemId = params["productId"]
      product_to_delete = Product.all.find(itemId)
      # @list = @list.products.select(product != product)
      @list.products.delete(product_to_delete)
    end
    render json: @list, status: 200
  end

  # def destroy
  #   @list = List.all[0]
  #   itemId = params["productId"]
  #   product_to_delete = Product.all.find_by(item_id: itemId)
  #   @list.delete(product_to_delete)
  #   render json: @list, status: 200
  # end
  # def create
  #   # @list = list.create(list_params)
  #   render json: @list, status: 201
  # end

  # private
  # def list_params
  #   params.permit(:name, :product)
  # end
end
