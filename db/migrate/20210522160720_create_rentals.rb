class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.string :name 
      t.string :description
      t.string :address
      t.string :rental_type 
      t.float :price
      t.integer :owner_id
      t.timestamps
    end
  end
end
