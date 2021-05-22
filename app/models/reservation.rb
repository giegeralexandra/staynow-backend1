class Reservation < ApplicationRecord
    belongs_to :rental
    belongs_to :guest, :class_name => "User"
    has_many :reviews
    validates :checkin, :checkout, :rental_id, :guest_id, presence: true  
end
