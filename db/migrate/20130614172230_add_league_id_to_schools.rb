class AddLeagueIdToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :league_id, :integer
  end
end
