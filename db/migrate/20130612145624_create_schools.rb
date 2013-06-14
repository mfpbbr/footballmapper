class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.integer :wins
      t.integer :losses
      t.float :pts_against
      t.float :pts_for
      t.integer :division
      t.boolean :big_game
      t.boolean :highly_recruited
      t.integer :globe_rank
      t.integer :herald_rank
      t.string :content

      t.timestamps
    end
  end
end
