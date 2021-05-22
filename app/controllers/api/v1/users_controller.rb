class Api::V1::UsersController < ApplicationController


    def index
    end

    def create
        @user = User.new(user_params)
        if @user.save
            #session login 
            render json: @user
        else 
            render json: {error: 'User creation error'}
        end
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def destroy 
        @user = User.find(params[:id])
        @user.delete
    end

    private 

    def user_params
        params.require(:user, :email).permit(:name)

    end

end