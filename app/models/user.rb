class User < ApplicationRecord

  # Associations
  has_many :bookings
end
