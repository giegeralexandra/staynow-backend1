class Api::V1::SessionsController < ApplicationController

    def new 
        if logged_in?
            render json @user
        end
    end
        
    def create
        @user = User.find_by(email: params[:email])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            render json: @user
        else
            render json: {error: 'invalid credentials'}
        end

    end

    def show
        if logged_in?
            render json: current_user
        end
    end

    def destroy 
        session.clear
        render json: {notice: 'logged out'}
    end

end
