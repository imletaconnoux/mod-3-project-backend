class Api::V1::ProductsController < ApplicationController
  def index
    product_adapter = WalmartApi.new
    product_adapter.populate_database
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
