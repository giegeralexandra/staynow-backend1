class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :owner_id
      t.integer :reservation_id
      t.integer :guest_id 
      t.integer :rental_id 
      t.string :description 
      t.timestamps
    end
  end
end
