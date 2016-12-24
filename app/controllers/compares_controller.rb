class ComparesController < ApplicationController
  def show
    @compare = Compare.find(params[:id])
  end
  
  def new
    @compare = Compare.new
  end
  
  def create
    @compare = Compare.new(compare_parameters)
    @compare.user_id = current_user.id
    @compare.save
    
    if @compare.save
    redirect_to compare_path(@compare)
    else
      render 'new'
    end
  end
  
  def edit
    @compare = Compare.find(params[:id])
  end
  
  def update
    @compare = Compare.find(params[:id])
    if @compare.update(compare_parameters)
      redirect_to @compare
    else
      render 'edit'
    end
  end
  
  def destroy
    @compare = Compare.find(params[:id])
    @compare.destroy
    redirect_to compares_path
  end
  
  private
  def compare_parameters
    params.require(:compare).permit(:headline, :img1_url, :img2_url, :user_id)
  end
  

end
