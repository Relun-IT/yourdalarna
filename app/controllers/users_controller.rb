class UsersController < ApplicationController
  before_action :user, only: [:show, :update]

  def show
    @trip_route = TripRoute.new
    @trip_routes = current_user.trip_routes.by_date
    @images = current_user.activity_images
    @activities = current_user.trip_route_activities.first(3)
  end

  def update
    if @user.update user_params
      redirect_to @user
      flash[:success] = t ".success"
    else
      render :back
    end
  end

  private
  def user
    @user = User.find params[:id]
  end
end
