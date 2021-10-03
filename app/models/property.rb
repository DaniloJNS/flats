class Property < ApplicationRecord
    belongs_to :property_type
    belongs_to :property_location
    validates :title, :description, :rooms, :bathrooms, :daily_rate, 
        presence: {message: 'não pode ficar em branco'}
    validates :rooms, :bathrooms, :numericality => {:only_integer => true, :greater_than => 0}
    validates :daily_rate, :numericality => { :greater_than => 0 }
end

