class Rental < ApplicationRecord
    belongs_to :owner, :class_name => "User"
    has_many :reservations
    has_many :reviews, through: :reservations
    has_many :guests, through: :reservations
    validates: :name, :descirption, :address, :rental_type, :price, :owner_id, presence: true


end
