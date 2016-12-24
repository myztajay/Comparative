class PagesController < ApplicationController
  def home
  end

  def index
    if user_signed_in?
      @compares = Compare.all
      render 'index'
    else
      redirect_to new_user_session_path
    end
  end

  def profile
       @compares = Compare.all.where(user:current_user.id)
  end

  def show
    @compare = Compare.find_by(params[:id])
  end
end
