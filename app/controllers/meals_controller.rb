class MealsController < ApplicationController
  def new
    @meal = Meal.new
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.user = current_user
    if @meal.save
      redirect_to edit_meal_path(@meal.id)
    else
      redirect_to new_meal_path
    end
  end

  def edit
    @user = current_user
    @meal = Meal.find(params[:id])
    3.times {@meal.foods.build}
  end

  def update
    @meal = Meal.find(params[:id])
    @meal.update(meal_params)
    if @meal.save
      # redirect_to edit_meal_path(@meal.id)
      redirect_to meal_path
    end
  end

  def destroy
  end

  private
  def meal_params
    params.require(:meal).permit(:name, :meal_type, :user_id, :sugar, :cals, :fat, :protein, :carb, {foods_attributes: [:id, :name, :cals, :sugar, :fat, :protein, :carb, :_destroy]})
  end


end
