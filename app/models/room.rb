class Room < ApplicationRecord
  # Validation
  validates :room_no, :room_type, :status, presence: true  

  # Associations
  belongs_to :hotel
  has_many :bookings

  enum :status, [ :active, :maintenance ]
end
