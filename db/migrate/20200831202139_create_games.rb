class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.belongs_to :user, foreign_key: true
      t.integer :score
      t.integer :completion_time

      t.timestamps
    end
  end
end
