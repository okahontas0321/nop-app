class Machine < ApplicationRecord
  has_many :machine_users
  has_many :users, through: :machine_users
  # validates :name, presence: true, uniqueness: true
end
