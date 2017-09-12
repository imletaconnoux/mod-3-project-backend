class User < ApplicationRecord

  @list = []

  def list
    @list
  end

  def add_to_list(product)
    @list << product
  end
  
end
