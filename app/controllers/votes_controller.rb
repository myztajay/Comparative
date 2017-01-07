class VotesController < ApplicationController
  
  def create
    
    @vote = Vote.new()
    @vote.user_id = current_user.id
    @vote.compare_id = params[:compare_id]
    @vote.choice = params[:choice]
    
    if @vote.user_id === current_user.id && @vote.compare_id === params[:compare_id]
     
    else
      @vote.save
    end
  end
  
end



  # def create
  #   @compare = Compare.new(compare_parameters)
  #   @compare.user_id = current_user.id
  #   @compare.save
    
  #   if @compare.save
  #   redirect_to compare_path(@compare)
  #   else
  #     render 'new'
  #   end
  # end
  
 
  