class PropertyTypesController < ApplicationController
  def new
    @property_type = PropertyType.new
  end
  def create

    @property_type_params = params.require(:property_type).permit(:name)

    PropertyType.all.each do |p|
      if p[:name].eql? @property_type_params[:name]
        flash.now[:error] = "Tipo de Imóvel já existe"
        return render action: "falied"
      end
    end

    @property_type = PropertyType.new(@property_type_params)

    if @property_type.save
      redirect_to property_type_path(@property_type)
    else
      flash.now[:error] = "Cadastro ínvalido"
      return render action: "falied"
    end
  end
  def show
    @property_type = PropertyType.find(params[:id])
  end
  def falied
  end
end
