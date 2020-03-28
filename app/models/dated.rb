class Dated < ApplicationRecord
  has_many :date_products, inverse_of: :dated,dependent: :destroy
  has_one :machine
  accepts_nested_attributes_for :date_products, allow_destroy: true

  enum operating_time: {
    "0.5H": 1,"1H": 2,"1.5H": 3,"2H": 4,"2.5H": 5,
    "3H": 6,"3.5H": 7,"4H": 8,"4.5H": 9,"5H":10,
    "5.5H":11,"6H":12,"6.5H":13,"7H":14,"7.5H":15,
    "8H":16,"8.5H":17,"9H":18,"9.5H":19,"10H":20
  }

  validates      :machine_number,       presence: true
  validates      :operating_time,       presence: true
  validates      :production_year,      presence: true
  validates      :production_month,     presence: true
  validates      :production_day,       presence: true
  validates      :total_production,     presence: true
  validates      :description,          presence: true
end
