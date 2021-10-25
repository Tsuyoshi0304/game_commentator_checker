class Game < ApplicationRecord
  has_many :commentators, through: :playings
	has_many :playings

	validates :title, presence: true
	validates :genre, presence: true
end
