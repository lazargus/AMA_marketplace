class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(current_user.bookings)
    @rentals = policy_scope(current_user.rentals)
  end

  def create
    @racket = Racket.find(params[:racket_id])
    @user = current_user
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.racket = @racket
    @booking.user = @user
    if @booking.save
      redirect_to bookings_path
    else
      render "rackets/show"
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to bookings_path
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(confirmed: true)
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
