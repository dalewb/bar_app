class BeersController < ApplicationController
  before_action :get_beer, only: [:show]

  def index
    @beers = Beer.all
  end

  def new
    @beer = Beer.new
  end

  def create
    @beer = Beer.create(beer_params)
    redirect_to @beer
  end

  def show
  end

  def get_beer
    @beer = Beer.find(params[:id])
  end

  private

  def beer_params
    params.require(:beer).permit(:name, :cost, :color, :origin, :flight_id, :type_id)
  end

end
