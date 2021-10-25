class Commentator < ApplicationRecord
	has_many :popular_movies, dependent: :destroy
	has_many :games, through: :playings
	has_many :playings
  belongs_to :movie_style

	validates :name, presence: true
	validates :voice, presence: true
	validates :youtube_icon, presence: true
	validates :sex, presence: true
	validates :age, presence: true
	validates :single_play, presence: true
	validates :enthusiastic_play, presence: true
	validates :appearance, presence: true
	validates :vtuber, presence: true
	validates :voice, presence: true
	validates :movie_style_id, presence: true
end
