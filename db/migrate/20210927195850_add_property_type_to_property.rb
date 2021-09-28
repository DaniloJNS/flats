class AddPropertyTypeToProperty < ActiveRecord::Migration[6.1]
  def change
    add_column :properties, :property_type, :reference
  end
end
