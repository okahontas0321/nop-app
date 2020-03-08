class Machine < ApplicationRecord
  has_many :machine_users
  has_many :users, through: :machine_users
  has_many :products

  validates :name, presence: true, uniqueness: true
  

  
end
