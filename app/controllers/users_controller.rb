class UsersController < ApplicationController

  before_action :authorize, only: [:edit, :update, :destroy]

  before_action

  def index
    @users = User.all
    @meals = Meal.all
  end

  def show
    @user = User.find(params[:id])
    @meals = @user.meals
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_session_path
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find session[:user_id]
    @user.update(user_params)
    redirect_to :user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation,:height,:weight,:trgwt)
  end

end
