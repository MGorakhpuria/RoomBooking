class Company < ApplicationRecord
  # Validation
  validates :name, :description, presence: true  

  # Associations
  has_many :hotels
end
