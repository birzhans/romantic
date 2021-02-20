class Meet < ApplicationRecord
  validates :day, :time, :place, presence: true
end
