class ResturantsController < ApplicationController
  load_and_authorize_resource
  def update
    if @resturant.update_attributes(resturant_params)
      flash[:notice] = "Resturant updated successfully."
      redirect_to resturant_path(@resturant)
    else
      flash.now[:error] = @resturant.errors.full_messages.to_sentence
      render :edit
    end
  end

  def create
    if @resturant.save
      flash[:notice] = "Resturant created successfully."
      redirect_to resturants_path
    else
      render('new')
    end
  end
  def destroy
    if @resturant.destroy
      flash[:notice] = "Resturant destroyed successfully."
      redirect_to(:action => 'index')
    else
      render('delete')
    end
  end


  private
  def resturant_params
    params.require(:resturant).permit(:name).merge(user_id: current_user.id)
  end
end
