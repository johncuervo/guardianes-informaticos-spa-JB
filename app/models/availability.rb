class Availability < ApplicationRecord
  belongs_to :engineer
  validates :day, :week, :year, :start_time, :end_time, presence: true
end