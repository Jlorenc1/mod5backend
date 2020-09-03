class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :user
      t.string :started_at
      t.string :score
      t.string :completion_time
      t.string :accuracy

      t.timestamps
    end
  end
end
