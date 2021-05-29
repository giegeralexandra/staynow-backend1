class Api::V1::UsersController < ApplicationController


    def index
        @users = User.all
        render json: @users 
    end

    def create
        # byebug
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            render json: @user, status: :created 
        else 
            resp= {
                error: @user.errors.full_messages.to_sentence
            }
            render json: {error: resp}
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
        params.require(:user).permit(:name, :email, :password)

    end

end