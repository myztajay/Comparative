class PagesController < ApplicationController
  def home
  end

  def index
    if user_signed_in?
      @compares = Compare.all
      render 'index'
    else
    end
  end

  def profile
      
       @user = User.find(params[:format])
       @compares = @user.compares
      # @compare = Compare.find(params[:format])
      # @user = @compare.user.username
  end
  
  def myprofile
      @compares = Compare.all.where(user:current_user.id)
      @user = current_user
  end

  def show
    @compare = Compare.find_by(params[:id])
  end
end
