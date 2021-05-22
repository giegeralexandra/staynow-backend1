class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.string :name 
      t.string :description
      t.string :address
      t.string :type 
      t.string :price
      t.string :owner_id
      t.integer :rating
      t.timestamps
    end
  end
end
