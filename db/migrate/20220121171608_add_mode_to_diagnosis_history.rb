class AddModeToDiagnosisHistory < ActiveRecord::Migration[6.0]
  def up
    add_column :diagnosis_histories, :mode, :integer
  end

  def down
    remove_column :diagnosis_histories, :mode, :integer
  end
end
