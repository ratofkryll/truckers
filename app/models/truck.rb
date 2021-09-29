class Truck < ApplicationRecord
  self.inheritance_column = 'type_column_name'

  belongs_to :company

  validates :name, :type, :year, :capacity, :company_id, presence: true
  validates :year, :capacity, numericality: { only_integer: true, message: 'must be a number' }
end
