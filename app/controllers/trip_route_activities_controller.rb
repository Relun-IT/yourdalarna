class TripRouteActivitiesController < ApplicationController
  def create
    @trip_route = TripRoute.find params[:trip_route_id]
    @trip_route_activity = @trip_route.trip_route_activities.create trip_route_activity_params

    if @trip_route_activity.save
      flash[:success] = "Success"
    else
      flash[:error] = @trip_route_activity.errors.full_messages.to_sentence
    end

    redirect_to :back
  end

  def destroy
    @trip_route_activity = TripRouteActivity.find params[:id]
    @trip_route_activity.destroy
    redirect_to :back
  end

  private

  def trip_route_activity_params
    params.require(:trip_route_activity).permit(:activity_id)
  end
end
