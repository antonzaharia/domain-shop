class StaticsController < ApplicationController
    def new_search
        if params[:status]
            @status = params[:status]
        end
    end

    def search
        url = "https://api.gandi.net/v5/domain/check"
        header = {'Authorization': 'Apikey eGDwsqy7LQCMTS8Q0hsXHWKA'}
        byebug
        redirect_to "/search?status=#{response}"
    end
end
