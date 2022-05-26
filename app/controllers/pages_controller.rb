class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @toilets = Toilet.all.order("created_at desc")
  end

  def dashboard
    @user = current_user
    @reviews = @user.reviews
    @bookings = @user.bookings
    @toilets = @user.toilets
    @new_booking = Booking.new
  end
end
