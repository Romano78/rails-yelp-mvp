class RestaurantsController < ApplicationController
 before_action :find_restaurant, only: %I[show edit update]

  def index
    @restaurants = Restaurant.all
  end

  def show
    # empty
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
   #@restaurant =
  end

  def edit

  end

  def update

  end

  def destroy

  end

private

def find_restaurant
  @restaurant = Restaurant.find(params[:id])
end
end
