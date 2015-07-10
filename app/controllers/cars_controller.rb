class CarsController < ApplicationController
  before_action :find_car, only: [:edit, :update, :show, :destroy]


def index
  @cars = Car.all
end

def create
   @car = Car.new(car_params)
      if @car.save 
        # it returned true. Do stuff
        redirect_to cars_path
    else
        # it returned false. Do different stuff
      render :new
     end
  
end

def new
  @car = Car.new
end

def edit
  @car
  
end

def show
  
end

def update
  if @car.update(car_params)
    redirect_to car_path
  else
    render :edit
  end
end

def destroy
  @car.destroy
  redirect_to cars_path
  
end

private

def car_params
      params.require(:car).permit(:year, :make, :vehicle_model, :body, :engine)
      
end

    def find_car
      @car = Car.find(params[:id])

    end
end