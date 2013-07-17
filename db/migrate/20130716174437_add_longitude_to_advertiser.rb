class AddLongitudeToAdvertiser < ActiveRecord::Migration
  def change
    add_column :advertisers, :longitude, :float
  end
end
