class BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
    @rentals = current_user.rentals
  end

  def create
    @racket = Racket.find(params[:racket_id])
    @user = current_user
    @booking = Booking.new(booking_params)
    @booking.racket = @racket
    @booking.user = @user
    if @booking.save
      redirect_to root_path
    else
      render "rackets/show"
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
