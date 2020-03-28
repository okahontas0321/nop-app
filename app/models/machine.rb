class Machine < ApplicationRecord
  has_many :dateds
  validates :name, presence: true, uniqueness: true
end
