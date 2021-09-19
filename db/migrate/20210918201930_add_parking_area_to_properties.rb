class AddParkingAreaToProperties < ActiveRecord::Migration[6.1]
  def change
    add_column :properties, :parking_slot, :string
  end
end
