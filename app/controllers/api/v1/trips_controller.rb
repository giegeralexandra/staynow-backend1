class Api::V1::TripsController < ApplicationController

    before_action :set_user 
    #/api/v1/users/1/reservations

    def index
    end

    def create
    end

    def show
    end

    def update 
    end

    def destroy 
    end

    private 

    def set_user
        @user = User.find(params(:guest_id))
    end

    def trip_params
        params.require(:trip).permit(:reservation_id, :rental_id, :owner_id, :guest_id)

    end

end