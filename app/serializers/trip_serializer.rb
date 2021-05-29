class TripSerializer < ActiveModel::Serializer
  attributes :id, :rental_id, :guest_id, :reviews, :rental, :guest, :reservation_id
end
