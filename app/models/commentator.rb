class Commentator < ApplicationRecord
  has_many :popular_movies, dependent: :destroy
  has_many :playings, dependent: :destroy
  has_many :playing_games, through: :playings, source: :game
  has_many :diagnosis_histories, dependent: :destroy
  has_many :reviews, dependent: :destroy
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
  enum age: { unknown_age: 0, around10: 5, teenager: 10, twenties: 20, thirties: 30, forties: 40, after50: 50 }
  enum play_style: { good_talk: 10,
                     astringent_voice: 20,
                     changing_voice: 30,
                     playing_well: 40,
                     playing_noisy: 50,
                     playing_happily: 60,
                     healing_playing: 70 }
  enum feeling: { excitement: 1, calm: 2 }
  enum famous: { famous_true: 1, famous_false: 0 }
  enum vtuber: { vtuber_true: 1, vtuber_false: 0 }
  enum is_forming_a_group: { is_forming_a_group_true: 1, is_forming_a_group_false: 0 }
  enum appearance: { appearance_true: 1, appearance_false: 0 }

  # 円グラフ
  scope :aggregate_game_genre, ->(commentator) { commentator.playing_games.pluck(:game_genre_id) }

  # 名前検索
  scope :name_search, lambda { |name_params|
    return if name_params[:name].blank?

    name_like(name_params[:name])
  }

  scope :name_like, ->(name) { where('name LIKE ?', "%#{name}%") if name.present? }

  # プレイスタイル検索
  scope :play_style_search, lambda { |play_style_params|
    where(play_style: play_style_params[:play_style])
  }

  # ゲームジャンル検索
  scope :searches_game_genre_search, lambda { |genre_name|
                                       game_genre = GameGenre.game_genre_search(genre_name).first

                                       games = Game.game_search(game_genre)

                                       playings = Playing.playing_search(games)

                                       where(id: playings.pluck(:commentator_id))
                                     }

  # サクッと診断
  # 条件に完全に合致する実況者スコープ
  scope :simple_search, lambda { |commentator_params|
                          where(feeling: commentator_params[:feeling],
                                famous: commentator_params[:famous],
                                vtuber: commentator_params[:vtuber],
                                sex: commentator_params[:sex])
                            .joins(:movie_style)
                            .merge(MovieStyle.movie_style_search(commentator_params))
                        }

  # 似ている実況者スコープ
  scope :simple_similar_search, lambda { |commentator_params|
                                  where(feeling: commentator_params[:feeling],
                                        vtuber: commentator_params[:vtuber],
                                        sex: commentator_params[:sex])
                                }

  # じっくり診断
  # 条件に完全に合致する実況者スコープ
  scope :normal_search, lambda { |hash|
                          game_genre = GameGenre.game_genre_search(hash[:genre_name]).first

                          games = Game.game_search(game_genre)

                          where(sex: hash[:sex],
                                play_style: hash[:play_style],
                                is_forming_a_group: hash[:is_forming_a_group],
                                appearance: hash[:appearance],
                                vtuber: hash[:vtuber])
                            .joins(:playings)
                            .merge(Playing.playing_search(games))
                            .joins(:movie_style)
                            .merge(MovieStyle.normal_movie_style_search(hash[:length], hash[:live]))
                        }

  # 似ている実況者スコープ
  scope :normal_similar_search, lambda { |hash|
                                  game_genre = GameGenre.game_genre_search(hash[:genre_name]).first

                                  games = Game.game_search(game_genre)

                                  where(sex: hash[:sex],
                                        play_style: hash[:play_style],
                                        vtuber: hash[:vtuber])
                                    .joins(:playings)
                                    .merge(Playing.playing_search(games))
                                }
end
