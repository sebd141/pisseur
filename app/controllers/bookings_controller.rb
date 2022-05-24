class BookingsController < ApplicationController
  before_action :set_toilet, only: [:new, :create, :show]

  def new
    @booking = Booking.new
  end

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.toilet = @toilet
    if @booking.save
      redirect_to toilet_path(@toilet)
    else
      render: :new
    end
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end

  def set_toilet
    @toilet = Toilet.find(params[:list_id])
  end
end
