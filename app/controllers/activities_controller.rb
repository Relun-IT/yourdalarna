class ActivitiesController < ApplicationController
  after_filter "save_my_previous_url", only: [:new, :show, :create, :update]

  def show
    @activity = Activity.find params[:id]
    @trivium = @activity.trivia
    @questions = @activity.questions.order("RANDOM()").first(3)
    @images = @activity.activity_images.paginate(:page => params[:page], :per_page => 6)
    @activity_image = ActivityImage.new
    @feedbacks = @activity.feedbacks.first_four_by_date
    @feedback = Feedback.new
    @back_url = session[:my_previous_url]
  end

  private

  def save_my_previous_url
    session[:my_previous_url] = URI(request.referer || '').path
  end
end
