class Api::V1::SessionsController < ApplicationController

    def create
        # byebug
        @user = User.find_by(email: params[:session][:email])
        
        if @user && @user.authenticate(params[:session][:password])
            session[:user_id] = @user.id
            render json: @user
        else
            render json: {error: 'invalid credentials'}
        end

    end

    def show
        if logged_in?
            render json: current_user
        else 
            render json: {error: "nobody logged in"}
        end
    end

    def destroy 
        # byebug
        session.clear
        render json: {notice: 'logged out'}
    end

end
