class Hotel < ApplicationRecord
  # Validation
  validates :name, :description, :city, :state, presence: true  

  # Associations
  belongs_to :company
  has_many :rooms

  # Scope
  scope :search_by_state, -> (state) { where("state LIKE ?", "%#{state}%") }
end
