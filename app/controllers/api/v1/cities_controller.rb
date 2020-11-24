module Api
  module V1
    class CitiesController < ApplicationController
      def index
        users = City.all
        render json: users
      end
    end
  end
end
