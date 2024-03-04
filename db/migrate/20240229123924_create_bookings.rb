class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.datetime :check_in
      t.datetime :check_out
      t.references :user, index: true, foreign_key: true
      t.references :room, index: true, foreign_key: true
      t.references :hotel, index: true, foreign_key: true
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
