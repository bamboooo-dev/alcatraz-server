module Api
  module V1
    class CitiesController < ApplicationController
      def index
        cities = City.all
        render json: cities, status: :ok
      end

      def create
        city = City.new(city_params)
        if city.save
          render json: city, status: :ok
        else
          render status: :bad_request
        end
      end

      private
        def city_params
          params.require(:city).permit(:name, :description)
        end
    end
  end
end
