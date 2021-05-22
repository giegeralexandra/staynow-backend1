class Review < ApplicationRecord
    belongs_to :guest, :class_name => "User"
    belongs_to :reservation 
    belongs_to :rentals
    validates :owner_id, :reservation_id, :guest_id, :rental_id, :description, presence:true
end
