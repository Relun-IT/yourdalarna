class EventsController < ApplicationController
  def show
    @event = Event.find params[:id]
    @hash = Gmaps4rails.build_markers(@event) do |event, marker|
      marker.lat event.latitude
      marker.lng event.longitude
      marker.infowindow event.name.capitalize
    end
  end
end
