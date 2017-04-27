class FoodsController < ApplicationController

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    @food.meal = Meal.find
    if @meal.save
      redirect_to user_path(current_user.id)
    else
      redirect_to new_meal_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def food_params
    params.require(:food).permit(:id,:name,:cals,:sugar,:fat,:protein,:carb)
  end
end
