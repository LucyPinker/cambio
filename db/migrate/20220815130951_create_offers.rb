class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :location
      t.string :house_type
      t.integer :bedrooms
      t.boolean :pets
      t.boolean :plants
      t.integer :guests
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
