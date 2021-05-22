class Api::V1::ReviewsController < ApplicationController
    
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

    def reviews_params
        params.require(:review).permit(:owner_id, :reservation_id, :guest_id, :rental_id, :description)

    end

end
