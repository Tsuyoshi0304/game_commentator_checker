class AddColumnToCommentators < ActiveRecord::Migration[6.0]
  def up
    add_column :commentators, :is_forming_a_group, :integer, null: false
    add_column :commentators, :play_style, :integer, null: false
    remove_column :commentators, :single_play
    remove_column :commentators, :enthusiastic_play
  end

  def down
    remove_column :commentators, :is_forming_a_group
    remove_column :commentators, :play_style
    add_column :commentators, :single_play, :boolean, null: false
    add_column :commentators, :enthusiastic_play, :boolean, null: false
  end
end
