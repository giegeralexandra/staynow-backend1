class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :checkout, :checkin, :total_price, :rental_id, :guest_id, :rental, :guest

  # belongs_to :rental, serializer: RentalSerializer
  # belongs_to :guest, :class_name => "User", serializer: UserSerializer

end
