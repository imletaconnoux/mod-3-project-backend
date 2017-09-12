class Api::V1::ListsController < ApplicationController
  def index
    @lists = List.all
    render json: @lists, status: 200
  end

  # def create
  #   # @list = list.create(list_params)
  #   render json: @list, status: 201
  # end

  # private
  # def list_params
  #   params.permit(:body)
  # end
end
