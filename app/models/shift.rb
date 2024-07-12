class Shift < ApplicationRecord
  belongs_to :engineer
  belongs_to :service
  has_many :notes
end
