class MealsController < ApplicationController
before_action :find_meal, only: [:edit, :update, :show, :destroy]


def index
  @meals = Meal.all
end

def create
   @meal = Meal.new(meal_params)
      if @meal.save 
        # it returned true. Do stuff
        redirect_to meals_path
    else
        # it returned false. Do different stuff
      render :new
     end
  
end

def new
  @meal = Meal.new
end

def edit
  @Meal
  
end

def show
  
end

def update
  if @meal.update(meal_params)
    redirect_to meal_path
  else
    render :edit
  end
end

def destroy
  @meal.destroy
  redirect_to meals_path
  
end

private

def meal_params
      params.require(:meal).permit(:name, :calories, :prep_time, :restaurant,)
      
end

    def find_meal
      @meal = Meal.find(params[:id])

    end

end