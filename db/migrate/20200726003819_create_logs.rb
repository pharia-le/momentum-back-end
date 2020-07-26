class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :logs do |t|
      t.boolean :done, default: true
      t.date :date
      t.references :habit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
