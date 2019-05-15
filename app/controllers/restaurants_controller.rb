class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: %I[show edit update destroy]

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
    @restaurant = Restaurant.new(params_restaurant)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant), notice: 'Restaurant was
      successfully created.'
    else
      render :new
    end
  end

  def edit
    # empty
  end

  def update
    if @restaurant.update(params_restaurant)
      redirect_to @restaurant, notice: 'restaurant successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path, notice: 'Restaurant was successfully destroyed.'
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def params_restaurant
    params.require('restaurant').permit(:name, :address, :phone_number, :category)
  end
end
