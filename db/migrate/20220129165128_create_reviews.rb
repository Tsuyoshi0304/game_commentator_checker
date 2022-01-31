class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.float :rank, null: false, default: 1
      t.text :body
      t.references :user, null: false, foreign_key: true
      t.references :commentator, null: false, foreign_key: true

      t.timestamps
    end
  end
end
