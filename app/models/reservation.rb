class Reservation < ApplicationRecord
    belongs_to :rental
    belongs_to :guest, :class_name => "User"
    has_many :reviews
    validates :checkin, :checkout, :rental_id, :guest_id, presence: true  
    validate :reservation_date_cannot_be_in_the_past, :checkout_cannot_be_before_checkin, :no_reservations_overlap
    
    def update_total_price 
        # debugger
        rental = Rental.find_by(id: self.rental_id)
        self.total_price = (self.checkout - self.checkin)*rental.price
    end

    #validations

    def reservation_date_cannot_be_in_the_past
        if (checkin < Date.today) || (checkout < Date.today)
          errors.add(:date, "can't be in the past")
        end
    end

    def checkout_cannot_be_before_checkin
        if checkout < checkin 
            errors.add(:checkout, "can't be before checkin")
        end
    end

    def no_reservations_overlap
        @reservations = Reservation.all
        @rental = Rental.find_by(id: self.rental_id)
        # byebug
        @rental.reservations.each do |reservation|
            if reservation != self 
                if (self.checkin == reservation.checkin || (self.checkin > reservation.checkin && self.checkin < reservation.checkout))
                    errors.add(:checkin, "conflicts with other reservations")
                end
            end
        end
    end

end
