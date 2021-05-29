class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email

  # has_many :reservations, serializer: ReservationSerializer
  # has_many :trips, serializer: TripSerializer


end
