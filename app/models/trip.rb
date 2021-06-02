class Trip < ApplicationRecord
    #belongs_to :user ? guest_id ?
    validates :reservation_id, :rental_id, :owner_id, :guest_id, presence: true
end
