class ShopsController < ApplicationController
    def show
        @show = Shop.find(params[:id])
    end
end
