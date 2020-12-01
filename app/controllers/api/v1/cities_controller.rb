module Api
  module V1
    class CitiesController < ApplicationController
      before_action :set_city, only: [:show, :update, :destroy]

      def index
        cities = City.all
        render json: cities, status: :ok
      end

      def show
        render json: @city, status: :ok
      end

      def create
        city = City.new(city_params)
        if city.save
          render json: city, status: :ok
        else
          render status: :bad_request
        end
      end

      def destroy
        @city.destroy
        render status: :ok
      end

      def update
        if @city.update(city_params)
          render json: @city, status: :ok
        else
          render json: @city.errors, status: :unprocessable_entity
        end
      end

      private
        def city_params
          params.require(:city).permit(:name, :description)
        end

        def set_city
          @city = City.find(params[:id])
        end
    end
  end
end
