class Api::V1::ReservationsController < ApplicationController


    before_action :set_user 

    def index
        @reservations = @user.reservations.select{ |res| res.checkin > Time.now}
        render json: @reservations
    end

    def create
        @reservation = Reservation.new(reservation_params)
            if @reservation.save
                @reservation.update_total_price
                @reservation.save
                render json: @reservation
            else 
                @reservation.errors
                render json: {error: 'Reservation cannot be in past. Reservation cannot overlap exsiting reservation.'}
            end
    end

    def show
        @reservation = @user.reservations.find(params[:id])
        render json: @reservation 
    end

    def update 
    end

    def destroy 
    end

    private 

    def set_user
        @user = current_user
    end

    def reservation_params
        params.require(:reservation).permit(:checkin, :checkout, :rental_id, :guest_id, :total_price )

    end

end