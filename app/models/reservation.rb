class Reservation < ApplicationRecord
    belongs_to :rental
    belongs_to :guest, class_name => "User"
    has_many :reviews
end
