class Api::V1::RentalsController < ApplicationController

    def index
        @rentals = Rental.all
        render json: @rentals 
    end

    def create
        @rental = Rental.new(rental_params)
        if @rental.save
            render json: @rental 
        else 
            render json: {error: 'Error creating Rental'}
        end
    end

    def show
        @rental = Rental.find(params[:id])
        render json: @rental 
    end

    def update 
    end

    private 


    def rental_params
        params.require(:rental).permit(:name, :description, :address, :rental_type, :price, :owner_id)
    end


end