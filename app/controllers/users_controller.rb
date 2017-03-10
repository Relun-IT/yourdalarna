class UsersController < ApplicationController
  before_action :user, only: [:show, :update, :edit]

  def show
    @trip_route = TripRoute.new
    @trip_routes = current_user.trip_routes.by_date.paginate(:page => params[:page], :per_page => 20)
    @images = current_user.activity_images.paginate(:page => params[:page], :per_page => 8)
    @latest_trip_route = current_user.trip_routes.latest
    @activities = @latest_trip_route.trip_route_activities.top_three
    @events = Event.by_date.paginate(:page => params[:page], :per_page => 3)
  end

  def edit
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

  def user_params
    params.require(:user).permit(:first_name, :surname, :avatar)
  end
end
