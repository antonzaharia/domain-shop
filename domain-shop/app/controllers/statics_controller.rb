require 'uri'
require 'net/http'

class StaticsController < ApplicationController
    def new_search
        if params[:domain]
            @domain = params[:domain]
        end
    end

    def search
        url = URI("https://api.gandi.net/v5/domain/check?name=#{params[:domain]}")

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true

        request = Net::HTTP::Get.new(url)
        request["authorization"] = 'Apikey eGDwsqy7LQCMTS8Q0hsXHWKA'
    
        response = http.request(request)

        redirect_to "/search?domain=#{params[:domain]}"
    end
end


# To Do: use .env for API key