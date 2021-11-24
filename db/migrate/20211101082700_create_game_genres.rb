class CreateGameGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :game_genres do |t|
      t.string :genre_name, null: false
      
      t.timestamps
    end
  end
end
