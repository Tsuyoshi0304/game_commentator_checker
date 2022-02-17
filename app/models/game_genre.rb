class GameGenre < ApplicationRecord
  has_many :games, dependent: :destroy
  has_ancestry

  validates :genre_name, presence: true

  # じっくり診断
  scope :game_genre_search, lambda { |genre_name|
    where(genre_name: genre_name)
  }
end
