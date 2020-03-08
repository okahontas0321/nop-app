class Product < ApplicationRecord
  has_one :machine
  belongs_to :user

  enum operating_time: {
    "0.5H": 1,"1H": 2,"1.5H": 3,"2H": 4,"2.5H": 5,
    "3H": 6,"3.5H": 7,"4H": 8,"4.5H": 9,"5H":10,
    "5.5H":11,"6H":12,"6.5H":13,"7H":14,"7.5H":15,
    "8H":16,"8.5H":17,"9H":18,"9.5H":19,"10H":20
  }


  validates      :producer,             presence: true, on: :validates_product
  validates      :machine_number,       presence: true, on: :validates_product
  validates      :operating_time,       presence: true, on: :validates_product
  validates      :product_no,           presence: true, on: :validates_product
  validates      :production_year,      presence: true, on: :validates_product
  validates      :production_month,     presence: true, on: :validates_product
  validates      :production_day,       presence: true, on: :validates_product
  validates      :number_of_production, presence: true, on: :validates_product
  validates      :defective,            presence: true, on: :validates_product
  validates      :waste,                presence: true, on: :validates_product
  validates      :total_production,     presence: true, on: :validates_product
  validates      :description,          presence: true, on: :validates_product
end
