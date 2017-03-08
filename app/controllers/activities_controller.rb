class ActivitiesController < ApplicationController
  def show
    @activity = Activity.find params[:id]
    @trivium = @activity.trivia
    @questions = @activity.questions
    @images = @activity.activity_images
    @activity_image = ActivityImage.new
  end
end
