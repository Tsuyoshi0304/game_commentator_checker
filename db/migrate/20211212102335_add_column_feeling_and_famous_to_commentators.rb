class AddColumnFeelingAndFamousToCommentators < ActiveRecord::Migration[6.0]
  def up
    add_column :commentators, :feeling, :integer, null: false
    add_column :commentators, :famous, :boolean, null: false
  end

  def down
    remove_column :commentators, :feeling
    remove_column :commentators, :famous
  end
end
