class Api::V1::ReservationsController < ApplicationController


    before_action :set_user 
    #/api/v1/users/1/reservations

    def index
        @reservations = @user.reservations
        render json: @reservations
    end

    def create
            # byebug
            @reservation = Reservation.new(reservation_params)
            
            #if rental is already reserved, cannot
            #if user already has a rental, cannot 
            if @reservation 
                @reservation.update_total_price
                @reservation.save
                # byebug
                render json: @reservation
            else 
                render json: {error: 'error creating reservation'}
            end
        # else 
        #     render json: {alert: "need to login"}
        # end

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