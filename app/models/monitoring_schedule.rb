class MonitoringSchedule < ApplicationRecord
  belongs_to :contract
  validates :day, :start_time, :end_time, presence: true
end
