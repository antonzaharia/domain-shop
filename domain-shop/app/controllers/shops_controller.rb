class ShopsController < ApplicationController
    include CurrentUserConcern
    def create
        @shop = @current_user.shops.create(name: params[:new_shop][:name])
        redirect_to user_path(@current_user)
    end
    
    def show
        @new_shop = Shop.find(params[:id])
    end

    def destroy
        shop = Shop.find(params[:id])
        shop.destroy

        redirect_to user_path(@current_user)
    end
end
