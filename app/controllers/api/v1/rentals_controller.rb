class Api::V1::RentalsController < ApplicationController

    # before_action :set_user 
    #/api/v1/users/1/rentals

    def index
        #if @user, user.rentals else Rental.all
        @rentals = Rental.all
        render json: @rentals 
    end

    def create
        @rental = Rental.new(rental_params)
        # binding.pry
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

    def destroy 
        @rental = Rental.find(params[:id])
        @rental.destroy 
    end

    def reservations_create
        @rental = Rental.find(params[:rental_id])
        redirect_to reservation_new_path
    end

    private 

    def set_user
        @owner = User.find(params[:owner_id])
    end

    def rental_params
        params.require(:rental).permit(:name, :description, :address, :rental_type, :price, :owner_id)
    end


end