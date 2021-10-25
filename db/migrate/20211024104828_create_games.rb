class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :title, null: false
      t.string :genre, null: false

      t.timestamps
    end
  end
end
