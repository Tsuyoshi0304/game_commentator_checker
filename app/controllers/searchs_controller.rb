class SearchsController < ApplicationController
  def top; end

  def search
    @genre_id = params['genre_name'] 
    @sex = params['search']['sex']
    @age = params['search']['age']
    @play_style = params['search']['play_style']
    @is_forming_a_group = params['is_forming_a_group']
    @appearance = params['appearance']
    @vtuber = params['vtuber']
    @length = params['search']['length']
    @single_shot = params['search']['single_shot']
    @live = params['search']['live']
    @datas = search_for(@genre_id, @sex, @age, @play_style, @is_forming_a_group, @appearance, @vtuber, @length, @single_shot, @live)
  end

  private

  def search_for(genre_id, sex, age, play_style, is_forming_a_group, appearance, vtuber, length, single_shot, live)
    game_genres = GameGenre.where(id: genre_id) 
    games = Game.where(game_genre_id: game_genres.pluck(:id))
    playings = Playing.where(game_id: games.pluck(:id))
    movie_style = MovieStyle.find_by(length: length, single_shot: single_shot, live: live)
    Commentator.where(id: playings.pluck(:commentator_id), 
                      sex: sex, 
                      age: age, 
                      play_style: play_style, 
                      is_forming_a_group: is_forming_a_group, 
                      appearance: appearance,
                      vtuber: vtuber,
                      movie_style_id: movie_style.id)
  end
end
