class GameGenre < ApplicationRecord
	has_many :games, dependent: :destroy

	validates :genre_name, presence: true
end
