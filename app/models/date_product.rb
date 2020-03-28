class DateProduct < ApplicationRecord
  belongs_to :dated, optional: true, inverse_of: :date_products
end
