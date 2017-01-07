class VotesController < ApplicationController
  
  def create
    
    @vote = Vote.new()
    @vote.user_id = current_user.id
    @vote.compare_id = params[:compare_id].to_i
    @vote.choice = params[:choice]
    @compare = Compare.find(params[:compare_id])
    
    if !@vote.save #offloaded the work of checking to ACTIVE RECORD if save fail its not unique.
      redirect_to pages_index_path, :flash => {:error => "You cannot vote twice, Lets keep it fair."}
    else 
      if params[:choice] === "this"
       
        @compare.img1_pts += 1
        @compare.save
        
      else
        @compare.img2_pts += 1
        @compare.save
      end
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
  
 
  