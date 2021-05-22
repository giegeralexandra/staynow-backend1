class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :description, :owner_id, :reservation_id, :guest_id, :rental_id, :guest, :reservation, :rental
end
