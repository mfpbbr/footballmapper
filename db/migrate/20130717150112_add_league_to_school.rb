class AddLeagueToSchool < ActiveRecord::Migration
  def change
    add_column :schools, :league, :string
  end
end
