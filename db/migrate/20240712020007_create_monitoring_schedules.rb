class CreateMonitoringSchedules < ActiveRecord::Migration[7.1]
  def change
    create_table :monitoring_schedules do |t|
      t.references :contract, null: false, foreign_key: true
      t.string :day
      t.integer :start_time
      t.integer :end_time

      t.timestamps
    end
  end
end
