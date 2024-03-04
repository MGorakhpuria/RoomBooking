class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.integer :room_no
      t.string :room_type
      t.integer :status
      t.references :hotel, index: true, foreign_key: true

      t.timestamps
    end
  end
end
