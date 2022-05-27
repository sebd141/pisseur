class BookingsController < ApplicationController
  before_action :set_toilet, only: %i[new create]
  before_action :find_booking, only: %i[update edit]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def show
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.toilet = @toilet
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :status)
  end

  def set_toilet
    @toilet = Toilet.find(params[:toilet_id])
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
