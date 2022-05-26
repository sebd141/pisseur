class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @toilets = Toilet.all.order("created_at desc")

    @markers = @toilets.geocoded.map do |toilet|
      {
        lat: toilet.latitude,
        lng: toilet.longitude,
        info_window: render_to_string(partial: "info_window", locals: { toilet: toilet })
      }
    end
  end

  def dashboard
    @user = current_user
    @reviews = @user.reviews
    @bookings = @user.bookings
    @toilets = @user.toilets
    @new_booking = Booking.new
  end


end
