class Engineer < ApplicationRecord
  has_many :availabilities
  has_many :shifts
  has_many :notes
  validates :name, presence: true
end
