class CreateMovieStyles < ActiveRecord::Migration[6.0]
  def change
    create_table :movie_styles do |t|
      t.boolean :short, null: false
      t.boolean :single_shot, null: false
      t.boolean :live, null: false

      t.timestamps
    end
  end
end
