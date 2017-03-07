class UsersController < ApplicationController
  before_action :user, only: [:show, :update]

  def show
    @trip_route = TripRoute.new
    @trip_routes = TripRoute.all.where(user: current_user)
  end

  def update
    if user.update user_params
      redirect_to user
      flash[:success] = t ".success"
    else
      render :back
    end
  end

  private
  def user_params
    params.require(:user).permit(:address)
  end

  def user
    @user = User.find params[:id]
  end
end
