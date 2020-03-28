class Product < ApplicationRecord
  has_many :date_products
  validates      :product_no,           presence: true
end
