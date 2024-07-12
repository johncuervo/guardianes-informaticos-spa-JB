class Service < ApplicationRecord
  has_many :shifts
  validates :name, :client, presence: true
end
