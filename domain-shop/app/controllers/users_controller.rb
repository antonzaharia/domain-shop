class UsersController < ApplicationController
    include CurrentUserConcern
    def new
        if @current_user
            redirect_to "/search"
        end
        @user = User.new
    end

    def create
        @user = User.find_or_create_by(name: params[:user][:name])
        session[:user_id] = @user.id

        redirect_to user_path(@user)
    end

    def show
        @user = User.find(params[:id])
        @new_shop = Shop.new
    end

    def destroy
        session[:user_id] = nil 
    end
end
