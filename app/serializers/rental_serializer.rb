class RentalSerializer < ActiveModel::Serializer
  attributes :id, :description, :address, :rental_type, :price, :owner_id, :owner, :reservations, :guests, :reviews
end
