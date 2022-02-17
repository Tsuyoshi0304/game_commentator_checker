class Playing < ApplicationRecord
  belongs_to :game
  belongs_to :commentator

  # じっくり診断
  scope :playing_search, lambda { |game|
    where(game_id: game.id)
  }
end
