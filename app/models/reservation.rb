class Reservation < ApplicationRecord
    belongs_to :rental
    belongs_to :guest, :class_name => "User"
    has_many :reviews
    validates :checkin, :checkout, :rental_id, :guest_id, presence: true  

    def update_total_price 
        (self.checkin - self.checkout)*self.rental.price
    end

end
