class CreateChallengeTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :challenge_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
