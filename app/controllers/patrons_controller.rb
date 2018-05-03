class PatronsController < ApplicationController

  def index
    @patrons = Patron.all
  end

  def show
    @patron = Patron.find(params[:id])
  end

  def new
    @patron = Patron.new
    @types = Type.all
  end

  def create
    @patron = Patron.create(patron_params)
    redirect_to @patron
  end

  def edit
    @patron = Patron.find(params[:id])
  end

  def update
    @patron = Patron.find(params[:id])
    @patron.update(patron_params)
    redirect_to @patron
  end


  private

  def patron_params
    params.require(:patron).permit(:name, :favorite_type)
  end

end
