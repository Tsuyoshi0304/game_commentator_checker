class CreateMovieStyles < ActiveRecord::Migration[6.0]
  def change
    create_table :movie_styles do |t|
      t.integer :length, null: false
      t.integer :single_shot, null: false
      t.integer :live, null: false

      t.timestamps
    end
  end
end
