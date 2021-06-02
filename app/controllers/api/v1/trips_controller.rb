class Api::V1::TripsController < ApplicationController

    before_action :set_user 

    def index
        @trips = @user.trips.select{ |trip| trip.checkout < Time.now}
        render json: @trips
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
        params.require(:trip).permit(:reservation_id, :rental_id, :owner_id, :guest_id, :trips)
    end

end