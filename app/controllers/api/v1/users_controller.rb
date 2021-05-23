class Api::V1::UsersController < ApplicationController


    def index
        @users = User.all
        render json: @users 
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

    def update
        if @user.update(user_params)
            render json: @user
        else
            render json: {error: 'User did not update'}
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

    def set_user
        @user = User.find(params(:id))
    end

    def user_params
        params.require(:user, :email).permit(:name)

    end

end