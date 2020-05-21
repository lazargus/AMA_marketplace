class RacketsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_racket, only: [ :show, :edit, :update, :destroy ]

  def index
    @rackets = policy_scope(Racket).geocoded.order(created_at: :desc)
  end

  def show
    @booking = Booking.new

    # @markers = @rackets.map do |racket|
    #   {
    #     lat: racket.latitude,
    #     lng: racket.longitude
    #   }
    # end

    @marker = { lat: @racket.latitude, lng: @racket.longitude }
  end

  def new
    @racket = Racket.new
    authorize @racket
  end

  def create
    @racket = Racket.new(racket_params)
    authorize @racket
    @racket.user = current_user
    if @racket.save!
      redirect_to racket_path(@racket)
    else
      render :new
    end
  end

  def edit
    authorize @racket
  end

  def update
    authorize @racket
    if @racket.update(racket_params)
      redirect_to racket_path(@racket), notice: 'Racket was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    authorize @racket
    @racket.destroy
    redirect_to root_path, notice: 'Racket was successfully destroyed.'
  end

  private

  def set_racket
    @racket = Racket.find(params[:id])
    authorize @racket
  end

  def racket_params
    params.require(:racket).permit(:description, :price, :location, :model, :year, :photo, :availability)
  end

end
