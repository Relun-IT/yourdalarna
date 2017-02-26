class UsersController < ApplicationController
  def show
    @user = User.find params[:id]
    @trip_route = TripRoute.new
    @trip_routes = TripRoute.all.where(user: current_user)
  end
end
