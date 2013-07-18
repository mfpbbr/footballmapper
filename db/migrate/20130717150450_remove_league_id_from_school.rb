class RemoveLeagueIdFromSchool < ActiveRecord::Migration
  def up
    remove_column :schools, :league_id
  end

  def down
    add_column :schools, :league_id, :integer
  end
end
