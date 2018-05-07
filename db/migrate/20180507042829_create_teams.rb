class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :team_name
      t.integer :player_one
      t.integer :player_two
      t.integer :score
      t.integer :won_percentage

      t.timestamps
    end
  end
end
