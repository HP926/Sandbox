class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :cars, :model, :vehicle_model
  end
end
