class TripSerializer < ActiveModel::Serializer
  attributes :id, :reservation_id, :owner_id, :rental_id, :guest_id, :reviews, :rental, :guest

end
