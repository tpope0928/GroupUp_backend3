class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :username
      t.string :city
      t.string :state
      t.integer :game_id

      t.timestamps
    end
  end
end
