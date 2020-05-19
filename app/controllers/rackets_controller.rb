class RacketsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @rackets = Racket.all
  end

  def show
    @racket = Racket.find(params[:id])
  end

  def new
    @racket = Racket.new
  end

  def create
    @racket = Racket.new(racket_params)
    @racket.user = current_user
    if @racket.save!
      redirect_to racket_path(@racket)
    else
      render :new
    end
  end

  private

  def racket_params
    params.require(:racket).permit(:description, :price, :location, :model, :year, :photo, :availability)
  end
end
