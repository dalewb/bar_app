class PatronsController < ApplicationController
  before_action :get_patron, only: [:show, :edit, :update]
  validates :name, presence: true

  def index
    @patrons = Patron.all
  end

  def show
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
  end

  def update
    @patron.update(patron_params)
    redirect_to @patron
  end


  private

  def patron_params
    params.require(:patron).permit(:name, :favorite_type)
  end

  def get_patron
    @patron = Patron.find(params[:id])
  end

end
