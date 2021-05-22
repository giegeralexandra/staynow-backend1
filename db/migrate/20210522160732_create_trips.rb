class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.integer :reservation_id
      t.integer :review_id 
      t.integer :rental_id 
      t.integer :owner_id
      t.integer :guest_id
      t.timestamps
    end
  end
end
