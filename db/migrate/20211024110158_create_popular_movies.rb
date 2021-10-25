class CreatePopularMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :popular_movies do |t|
      t.text :movie, null: false
      

      t.timestamps
    end
  end
end
