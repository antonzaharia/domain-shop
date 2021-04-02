class ShopsController < ApplicationController
    
    def create
    end
    def show
        @show = Shop.find(params[:id])
    end
end
