class PropetiesController < ApplicationController
  def show
    @property = Property.find(params[:id])
  end
  def new 
    @property = Property.new
  end
  def create
    # puts params
    @property = Property.create(params.require(:property).permit(:title, :description, :rooms, :parking_slot, :bathrooms, :pets, :daily_rate))
    redirect_to propety_path(@property)
  end
end
