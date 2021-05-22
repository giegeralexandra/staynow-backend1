class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :reservations, :rentals, :reviews, :trips
end
