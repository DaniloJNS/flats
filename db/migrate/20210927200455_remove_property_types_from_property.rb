class RemovePropertyTypesFromProperty < ActiveRecord::Migration[6.1]
  def change
    remove_column :properties, :property_type, :reference
  end
end
