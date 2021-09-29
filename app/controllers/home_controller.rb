class HomeController < ApplicationController
  def index
    @property = Property.all
    @property_types = PropertyType.all
    @property_locations = PropertyLocation.all
  end
end
