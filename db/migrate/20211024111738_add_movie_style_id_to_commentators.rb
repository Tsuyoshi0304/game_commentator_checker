class AddMovieStyleIdToCommentators < ActiveRecord::Migration[6.0]
  def change
    add_reference :commentators, :movie_style, foreign_key: true, null: false
  end
end
