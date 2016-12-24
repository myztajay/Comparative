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
    @User = User.find_by(params[:id])
       @compares = Compare.all.where(user:current_user.id)
      render 'index'
  end

  def show
  end
end
