class CreateShifts < ActiveRecord::Migration[7.1]
  def change
    create_table :shifts do |t|
      t.references :engineer, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true
      t.datetime :hour, precision: nil

      t.timestamps
    end
  end
end
