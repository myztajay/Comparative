class ComparesController < ApplicationController
  
  
  def index
    # if user_signed_in?
      @compares = Compare.all
    #   render 'index'
    # else
    #   redirect_to new_user_session_path
    # end
      # @voted = Vote.where user_id: current_user.id;
      @user = User.find(current_user.id)
  end
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
    params.require(:compare).permit(:headline, :img1_url, :img2_url)
  end
  
  

end
