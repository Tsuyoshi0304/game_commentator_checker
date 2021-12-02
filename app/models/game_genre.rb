class GameGenre < ApplicationRecord
	has_many :games, dependent: :destroy
	has_ancestry

	validates :genre_name, presence: true
end
