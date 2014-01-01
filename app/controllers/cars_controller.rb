class CarsController < ApplicationController

  def index
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.create(car_params)
  end

  private

  def car_params
    params.require(:car).permit(:name, :color, :year, :mileage, :description)
  end

end
