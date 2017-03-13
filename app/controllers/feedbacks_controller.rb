class FeedbacksController < ApplicationController
  def create
    @activity = Activity.find params[:activity_id]
    @feedback = @activity.feedbacks.new feedback_params

    if @feedback.save
      flash[:success] = t ".success"
    else
      flash[:error] = @feedback.errors.full_messages.to_sentence
    end

    redirect_to :back
  end

  def destroy
    @feedback = Feedback.find params[:id]
    @feedback.destroy
    redirect_to :back
  end

  private

  def feedback_params
    params.require(:feedback).permit(:body).merge(user: current_user)
  end
end
