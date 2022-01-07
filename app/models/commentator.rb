class Commentator < ApplicationRecord
	has_many :popular_movies, dependent: :destroy
	has_many :playings, dependent: :destroy
	has_many :playing_games, through: :playings, source: :game
  belongs_to :movie_style, optional: true

	has_one_attached :youtube_icon

	validates :name, presence: true
	validates :sex, presence: true
	validates :age, presence: true
	validates :is_forming_a_group, presence: true
	validates :play_style, presence: true
	validates :appearance, presence: true
	validates :vtuber, presence: true 

	enum sex: { unknown_sex: 0, male: 1, female: 2 }
	enum age: { unknown_age: 0, around_10: 5, teenager: 10, twenties: 20, thirties: 30, forties: 40, after_fifties: 50 }
	enum play_style: {
		good_talk: 10,
		astringent_voice: 20,
		changing_voice: 30,
		playing_well: 40,
		playing_noisy: 50,
		playing_happily: 60,
		healing_playing: 70
	}
	enum feeling: { excitement: 1, calm: 2 }
	enum famous: { famous_true: 1, famous_false: 0 }
	enum vtuber: { vtuber_true: 1, vtuber_false: 0 }
	enum is_forming_a_group: { is_forming_a_group_true: 1, is_forming_a_group_false: 0 }
	enum appearance: { appearance_true: 1, appearance_false: 0 }
end
