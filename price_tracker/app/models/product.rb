class Product < ApplicationRecord
  belongs_to :list, optional: true
end
