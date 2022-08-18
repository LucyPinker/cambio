class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :location
      t.date :start_date
      t.date :end_date
      t.string :house_type
      t.boolean :pets
      t.boolean :plants
      t.integer :bedrooms
      t.integer :guests
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
