class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.integer :team_one
      t.integer :team_two
      t.integer :who_one
      t.integer :team_one_score
      t.integer :team_two_score

      t.timestamps
    end
  end
end
