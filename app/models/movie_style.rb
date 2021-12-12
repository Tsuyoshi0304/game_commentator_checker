class MovieStyle < ApplicationRecord
  has_many :commentators, dependent: :destroy

  validates :length, presence: true
	# validates :single_shot, presence: true
	validates :live, presence: true

  enum length: { within_30_minutes: 1, over_30_minutes: 2 }
  # enum single_shot: { single_shot_main: 1, half_and_half_single_shot: 2, series_main: 3 }
  enum live: { live_main: 1, edit_main: 2 }
end
