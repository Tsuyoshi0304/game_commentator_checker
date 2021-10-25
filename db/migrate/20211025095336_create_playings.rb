class CreatePlayings < ActiveRecord::Migration[6.0]
  def change
    create_table :playings do |t|
      t.references :game, null: false, foreign_key: true
      t.references :commentator, null: false, foreign_key: true

      t.timestamps
    end
  end
end
