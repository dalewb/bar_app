class TypesController < ApplicationController

  def index
    @types = Type.all
  end

  def show
    @type = Type.find(params[:id])
  end

  def new
    @type = Type.new
  end

  def create
    @type = Type.create(type_params)
    redirect_to @type
  end

  def edit
    @type = Type.find(params[:id])
  end

  def update
    @type = Type.find(params[:id])
    @type.update(type_params)
    redirect_to @type
  end


  private

  def type_params
    params.require(:type).permit(:name, :body)
  end

end
