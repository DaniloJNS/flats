class PropertyLocationsController < ApplicationController
  def new
    @property_location = PropertyLocation.new
  end
  def create
    # puts params

    @property_location = PropertyLocation.new(property_params)

    
    if @property_location.save
      redirect_to root_path
    else
      render :new
      redirect_to
    end
  end

  def show
      @property_location = PropertyLocation.find_by(id: params[:id])
  end

  private
  def property_params
    params.require(:property_location).permit(:name)
  end
end
