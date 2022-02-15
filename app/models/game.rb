class Game < ApplicationRecord
  has_many :playings, dependent: :destroy
  has_many :commentators, dependent: :destroy
  has_many :playing_commentators, through: :playings, source: :commentator
  belongs_to :game_genre

  validates :title, presence: true
  validates :genre, presence: true

  # じっくり診断
  scope :game_search, ->(game_genres) {
    where(game_genre_id: game_genres.pluck(:id))
  }
end
