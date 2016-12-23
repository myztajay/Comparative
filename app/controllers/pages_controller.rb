class PagesController < ApplicationController
  def home
  end

  def index
    @compares = Compare.all
  end

  def profile
    @User = User.find_by(params[:id])
  end

  def show
  end
end
