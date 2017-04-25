class MealsController < ApplicationController
  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.user = current_user
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
  def meal_params
    params.require(:meal).permit(:name, :meal_type, :user_id)
  end


end
