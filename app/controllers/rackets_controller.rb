class RacketsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]


  def index
    @rackets = Racket.all
  end

  def show
    @booking = Booking.new
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

  def update
    @racket = Racket.find(params[:id])
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

  def racket_params
    params.require(:racket).permit(:description, :price, :location, :model, :year, :photo, :availability)
  end

end
