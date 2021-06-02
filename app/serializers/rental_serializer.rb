class RentalSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :address, :rental_type, :price, :owner_id, :owner, :reservations, :guests
end
