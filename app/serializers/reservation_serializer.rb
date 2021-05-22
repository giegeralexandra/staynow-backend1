class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :checkout, :checkin, :total_price, :rental_id, :guest_id, :rental, :guest

end
