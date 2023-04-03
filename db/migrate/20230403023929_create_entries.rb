class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.text :body
      t.references :journal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
