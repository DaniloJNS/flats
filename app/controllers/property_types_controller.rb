class PropertyTypesController < ApplicationController
  def new
    @property_type = PropertyType.new
  end
  def create
    @property_type = PropertyType.new(property_type_params)

    if @property_type.save
      return redirect_to root_path
    else
      render :new
    end
  end
  def show
    @property_type = PropertyType.find(params[:id])
  end
  def property_type_params
     params.require(:property_type).permit(:name)
  end
end
