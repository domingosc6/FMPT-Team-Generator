class CreateChallenges < ActiveRecord::Migration[5.1]
  def change
    create_table :challenges do |t|
      t.string :name
      t.integer :team_id
      t.integer :challenge_type_id
      t.string :difficulty_id

      t.timestamps
    end
  end
end
