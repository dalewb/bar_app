class TypesController < ApplicationController
  before_action :get_type, only: [:show, :edit, :update]
  validates :name, presence: true

  def index
    @types = Type.all
  end

  def show
  end

  def new
    @type = Type.new
  end

  def create
    @type = Type.create(type_params)
    redirect_to @type
  end

  def edit
  end

  def update
    @type.update(type_params)
    redirect_to @type
  end


  private

  def type_params
    params.require(:type).permit(:name, :type_list)
  end

  def get_type
    @type = Type.find(params[:id])
  end

end
