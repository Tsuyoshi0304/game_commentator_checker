class RemoveColumnFromMovieStyles < ActiveRecord::Migration[6.0]
  def up
    remove_column :movie_styles, :single_shot
  end

  def down
    add_column :movie_styles, :single_shot, :integer, null: false
  end
end
