class PagesController < ApplicationController
  def index
    @toilets = Toilet.all
  end

  def dashboard
    @user = current_user
    @reviews = @user.reviews
    @bookings = @user.bookings
    @toilets = @user.toilets
    @new_booking = Booking.new
  end
end
