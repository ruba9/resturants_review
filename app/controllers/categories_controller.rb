class CategoriesController < ApplicationController
  load_and_authorize_resource

  def update
    if @category.update_attributes(cat_params) 
      flash[:notice] = "Category updates successfully"
      redirect_to category_path(@category)
    else 
      flash.now[:error] = @resturant.errors.full_messages.to_sentence
      render :edit
    end
  end

  def create
    if  @category.save
      flash[:notice] = "Category created successfully"
      redirect_to categories_path
    else 
      render :new
    end
  end

  def destroy
    if @resturant.destroy
      flash[:notice] = "Category destroyed successfully."
      redirect_to(:action => 'index')
    else
      render :delete
    end
  end
  private 
  def cat_params
    params.require(:category).permit(:_name).merge(user_id: current_user.id)
  end
end

