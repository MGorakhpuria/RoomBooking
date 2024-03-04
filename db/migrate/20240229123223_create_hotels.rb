class CreateHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.text :description
      t.string :city
      t.string :state
      t.references :company, index: true, foreign_key: true

      t.timestamps
    end
  end
end
