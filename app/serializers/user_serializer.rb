class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :reservations, :rentals, :reviews, :trips
end
