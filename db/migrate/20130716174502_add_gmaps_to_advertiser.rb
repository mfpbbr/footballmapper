class AddGmapsToAdvertiser < ActiveRecord::Migration
  def change
    add_column :advertisers, :gmaps, :boolean
  end
end
