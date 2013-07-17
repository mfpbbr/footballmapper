class AddLatitudeToAdvertiser < ActiveRecord::Migration
  def change
    add_column :advertisers, :latitude, :float
  end
end
