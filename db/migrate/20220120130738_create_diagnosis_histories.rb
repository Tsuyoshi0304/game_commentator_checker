class CreateDiagnosisHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :diagnosis_histories do |t|
      t.references :user, null: false, foreign_key: true
      t.references :commentator, null: false, foreign_key: true
      t.datetime :diagnosed_at, null: false, default: DateTime.now

      t.timestamps
    end
  end
end
