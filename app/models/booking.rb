class Booking < ApplicationRecord
  belongs_to :uniqorn
  belongs_to :user
  has_one :review

  enum status: %i[pending rejected accepted]

  validates :start_date, presence: true, comparison: { greater_than_or_equal_to: Date.today, message: "cannot be in the past, please fill in a valid date!" }
  validates :end_date, presence: true, comparison: { greater_than_or_equal_to: Date.today, message: "cannot be in the past, please fill in a valid date!" }
end
