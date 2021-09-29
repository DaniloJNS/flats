class HomeController < ApplicationController
  def index
    @property = Property.all
    @property_types = PropertyType.all
  end
end
