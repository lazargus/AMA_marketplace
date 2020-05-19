class RacketsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_racket, only: [ :show, :edit, :update, :destroy ]

  def index
    @rackets = Racket.all
  end

  def show
  end

  def new
    @racket = Racket.new
  end

  def create
  end

  def edit
  end

  def update
    if @racket.update(racket_params)
      redirect_to racket_path(@racket), notice: 'Racket was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
      @racket = Racket.find(params[:id])
      @racket.destroy
      redirect_to root_path, notice: 'Racket was successfully destroyed.'
  end

  private

  def set_racket
      @racket = Racket.find(params[:id])
  end

  def racket_params
    params.require(:racket).permit(:description, :model, :year, :price, :location)
  end

end
