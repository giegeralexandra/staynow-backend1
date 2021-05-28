class Api::V1::TripsController < ApplicationController

    before_action :set_user 
    #/api/v1/users/1/reservations

    def index
        # byebug
        if logged_in?
            @trips = Trip.find_by(guest_id: @user.id)
            render json: @trips
        else 
            render json: {error: "nobody logged in"}
        end
    end

    def create
    end

    def show
        @trip = Trip.find_by(guest_id: @user.id)
        render json: @trip
    end

    def update 
    end

    def destroy 
    end

    private 

    def set_user
        @user = current_user
    end

    def trip_params
        params.require(:trip).permit(:reservation_id, :rental_id, :owner_id, :guest_id)

    end

end