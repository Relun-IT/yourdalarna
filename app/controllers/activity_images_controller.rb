class ActivityImagesController < ApplicationController
  def create
    @activity = Activity.find params[:activity_id]
    @activity_image = @activity.activity_images.new activity_image_params

    if @activity_image.save
      flash[:success] = "Success"
    else
      flash[:error] = @activity_image.errors.full_messages.to_sentence
    end

    redirect_to :back
  end

  def destroy
    @activity_image = ActivityImage.find params[:id]
    @activity_image.destroy
    redirect_to :back
  end

  private

  def activity_image_params
    params.require(:activity_image).permit(:image).merge(user: current_user)
  end
end
