class RemoveParkingAreaFromProperties < ActiveRecord::Migration[6.1]
  def change
    remove_column :properties, :parking_slot, :string
  end
end
