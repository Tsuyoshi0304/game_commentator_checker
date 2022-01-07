class CreateCommentators < ActiveRecord::Migration[6.0]
  def change
    create_table :commentators do |t|
      t.string :name, null: false
      t.text :voice
      t.text :youtube_icon
      t.text :youtube_channel_url
      t.integer :sex, null: false
      t.integer :age, null: false
      t.boolean :single_play, null: false
      t.boolean :enthusiastic_play, null: false
      t.integer :appearance, null: false
      t.integer :vtuber, null: false
      


      t.timestamps
    end
  end
end
