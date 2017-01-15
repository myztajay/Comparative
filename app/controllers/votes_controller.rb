class VotesController < ApplicationController
  
  def create
    
 if user_signed_in? 
    @vote = Vote.new()
    @vote.user_id = current_user.id
    @vote.compare_id = params[:compare_id].to_i
    @vote.choice = params[:choice]
    @compare = Compare.find(params[:compare_id])
    
    if !@vote.save #offloaded the work of checking to ACTIVE RECORD if save fail its not unique.
      redirect_to root_path, :flash => {:error => "You cannot vote twice, Lets keep it fair."}
    else 
      if params[:choice] === "this"
       
        @compare.img1_pts += 1
        @compare.save
        redirect_to root_path
        
      else
        @compare.img2_pts += 1
        @compare.save
        redirect_to root_path
      end
     end
   else
redirect_to  new_user_session_path
 end
end
  
end



 
  