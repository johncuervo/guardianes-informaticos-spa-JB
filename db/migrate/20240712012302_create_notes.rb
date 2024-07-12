class CreateNotes < ActiveRecord::Migration[7.1]
  def change
    create_table :notes do |t|
      t.references :engineer, null: false, foreign_key: true
      t.references :shift, null: false, foreign_key: true
      t.text :message

      t.timestamps
    end
  end
end
