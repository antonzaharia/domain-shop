class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.find_or_create_by(name: params[:user][:name])
        session[:user_id] = @user.id
        
        redirect_to user_path(@user)
    end

    def show
        @user = User.find(params[:id])
    end
end
