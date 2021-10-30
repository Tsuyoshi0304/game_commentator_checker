class MovieStyle < ApplicationRecord
  has_many :commentators, dependent: :destroy

  validates :short, presence: true
	validates :single_shot, presence: true
	validates :live, presence: true

  enum length: { within_20_minutes: 1, from_30_to_40_minutes: 2, over_1_hour: 3 }
  enum single_shot: { single_shot_main: 1, half_and_half_single_shot: 2, series_main: 3 }
  enum live: { live_main: 1, half_and_half_live: 2, edit_main: 3 }
end
