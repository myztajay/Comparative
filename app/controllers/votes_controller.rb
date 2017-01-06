class VotesController < ApplicationController
  
  def create 
    @vote = Vote.new(vote_parameters)
    @vote.user_id = current_user.id # devuse for current user
    @vote.compare_id = self.id # hopefully for compare that spawned this vote
    @vote.choice = value # derived from button value in html passed to controller
    @vote.save
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
