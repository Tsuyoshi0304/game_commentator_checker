class AddAncestryToGameGenres < ActiveRecord::Migration[6.0]
  def change
    add_column :game_genres, :ancestry, :string
  end
end
