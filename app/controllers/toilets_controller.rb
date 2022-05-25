class ToiletsController < ApplicationController
  before_action :find_toilet, only: %i[edit show update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @toilets = Toilet.all
  end

  def new
    @toilet = Toilet.new
  end

  def create
    @toilet = Toilet.new(toilet_params)
    @toilet.user = current_user
    if @toilet.save
      redirect_to toilets_path(@toilet)
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
    @toilet.update(toilet_params)
    redirect_to toilet_path(@toilet)
  end

  def destroy
    @toilet.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to toilets_path
  end

  private
  def toilet_params
    params.require(:toilet).permit(:location, :category, :price, :name, :description)
  end

  def find_toilet
    @toilet = Toilet.find(params[:id])
  end
end
