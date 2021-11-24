class Playing < ApplicationRecord
  belongs_to :game
  belongs_to :commentator
end
