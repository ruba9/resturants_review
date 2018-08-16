class ReviewsController < ApplicationController
  load_and_authorize_resource

  def create
    if @review.save
      flash[:notice] = "Review created successfully."
      redirect_to resturant_reviews_path(resturant_id: @review.resturant_id)

    else
      render :new
    end
  end
  def destroy
    if @review.destroy
      flash[:notice] = " Review destroyed successfully."
      redirect_to(:action => "index")
    else
      render :delete
    end
  end
  def update
    if @review.update_attributes(review_params)
      flash[:notice] = "Reviw updated successfully."
      redirect_to(:action => 'show', :id => @review.id)
    else
      render('edit')
    end
  end
  private
  def review_params
    params.require(:review).permit(:review, :stars).merge(user_id: current_user.id, resturant_id: params[:resturant_id])
  end
end
