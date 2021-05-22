class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.date :checkin
      t.date :checkout
      t.integer :rental_id
      t.integer :guest_id 
      t.integer :total_price 
      t.timestamps
    end
  end
end
