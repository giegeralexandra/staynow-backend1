class Rental < ApplicationRecord
    belongs_to :owner, :class_name => "User"
    has_many :reservations
    has_many :reviews, through: :reservations
    has_many :guests, through: :reservations
    validates :name, :description, :address, :rental_type, :price, :owner_id, presence: true
    validates_inclusion_of :rental_type, :in => ['house', 'apartment', 'hotel', 'townhouse', 'cabin' ]

end
