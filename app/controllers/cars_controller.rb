class CarsController < ApplicationController

  def index
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.create(car_params)
    if @car.save
      flash[:car_added] = "Car was Succefully Added"
      redirect_to new_car_path
    else
      flash[:miles_message] = "Please add valid miles"
      flash[:year_message] = "No cars older than 1980 are permited"
      render :new
    end
  end

  private

  def car_params
    params.require(:car).permit(:name, :color, :year, :mileage, :description)
  end

end
