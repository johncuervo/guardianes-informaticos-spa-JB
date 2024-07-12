class Note < ApplicationRecord
  belongs_to :engineer
  belongs_to :shift
end
