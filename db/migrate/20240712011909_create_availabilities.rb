class CreateAvailabilities < ActiveRecord::Migration[7.1]
  def change
    create_table :availabilities do |t|
      t.references :engineer, null: false, foreign_key: true
      t.string :day
      t.integer :week
      t.integer :year
      t.integer :start_time
      t.integer :end_time
      t.boolean :available, default: false

      t.timestamps
    end
  end
end
