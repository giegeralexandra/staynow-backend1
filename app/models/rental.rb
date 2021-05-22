class Rental < ApplicationRecord
    belongs_to :owner, :class_name => "User"
    has_many :reservations
    has_many :reviews, through: :reservations
    has_many :guests, through: :reservations

end
