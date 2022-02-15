class MovieStyle < ApplicationRecord
  has_many :commentators, dependent: :destroy

  validates :length, presence: true

  validates :live, presence: true

  enum length: { within_30_minutes: 1, over_30_minutes: 2 }

  enum live: { live_main: 1, edit_main: 2 }

  # サクッと診断
  scope :movie_style_search, ->(commentator_params) {
                               where(length: commentator_params[:length])
                             }

  # じっくり診断
  scope :normal_movie_style_search, ->(length, live) {
                                      where(length: length,
                                            live: live)
                                    }
end
