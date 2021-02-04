module Api
  module V1
    class RestaurantsController < ApplicationController
      def index
        restaurants = Restaurant.all

        # status: :okとすることで、リクエストが成功したこと、200 OKと一緒にデータを返す
        render json: {
          restaurants: restaurants
        }, status: :ok
      end
    end
  end
end