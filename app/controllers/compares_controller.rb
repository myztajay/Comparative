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
  end
  
  def update
  end
  
  def destroy
  end
  
  private
  def compare_parameters
    params.require(:compare).permit(:headline, :img1_url, :img2_url, :user_id)
  end
  

end
