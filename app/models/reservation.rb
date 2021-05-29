class Reservation < ApplicationRecord
    belongs_to :rental
    belongs_to :guest, :class_name => "User"
    has_many :reviews
    validates :checkin, :checkout, :rental_id, :guest_id, presence: true  

    def update_total_price 
        rental = Rental.find_by(id: self.rental_id)
        self.total_price = (self.checkout - self.checkin)*rental.price
    end

end
