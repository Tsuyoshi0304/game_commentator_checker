class Playing < ApplicationRecord
  belongs_to :game
  belongs_to :commentator

  # じっくり診断
  scope :playing_search, lambda { |games|
    where(game_id: games.ids)
  }
end
