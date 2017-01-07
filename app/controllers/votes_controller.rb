class VotesController < ApplicationController
  
  def create
    
    @vote = Vote.new()
    @vote.user_id = current_user.id
    @vote.compare_id = params[:compare_id].to_i
    @vote.choice = params[:choice]
    
    if !@vote.save #offloaded the work of checking to ACTIVE RECORD if save fail its not unique.
     
    
      redirect_to root_path, :flash => {:error => "You cannot vote twice, Lets keep it fair."}
    else
     
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
  
 
  