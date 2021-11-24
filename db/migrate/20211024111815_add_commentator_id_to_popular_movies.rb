class AddCommentatorIdToPopularMovies < ActiveRecord::Migration[6.0]
  def change
    add_reference :popular_movies, :commentator, foreign_key: true, null: false
  end
end
