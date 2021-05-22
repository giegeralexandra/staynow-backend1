class User < ApplicationRecord
    has_many :rentals, :foreign_key => 'owner_id'
    has_many :reservations, through: :rentals
    has_many :reviews, :foreign_key => 'guest_id'
    has_many :trips, :class_name => "Reservation", :foreign_key => 'guest_id'
    validates :name, presence: true 
end
