class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :genre
      t.integer :level
      t.boolean :competitive
      t.string :player_username

      t.timestamps
    end
  end
end
