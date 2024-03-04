class Booking < ApplicationRecord
  # Validation
  validates :check_in, :check_out, presence: true
  validate :verify_checkin_and_checkout_date

  # Associations
  belongs_to :user
  belongs_to :room
  belongs_to :hotel

  enum :status, [ :initiated_by_user, :done, :cancel ]

  private

  def verify_checkin_and_checkout_date
    if check_in && check_in > check_out
      errors.add(:check_in, " date can't be greater than check out date")
    end
  end
end
