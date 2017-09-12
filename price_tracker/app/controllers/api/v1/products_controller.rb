class Api::V1::ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: @products, status: 200
  end

  def create
    @product = product.create(product_params)
    render json: @product, status: 201
  end

  private
  def product_params
    params.permit(:body)
  end
end