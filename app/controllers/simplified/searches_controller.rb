class Simplified::SearchesController < ApplicationController
  skip_before_action :require_login, only: %i[new search]
  
  def new; end

  def search
    @feeling = params['feeling']
    @famous = params['famous']
    @vtuber = params['vtuber']
    @sex = params['sex']
    @length = params['length']

    @commentators = search_for(@feeling, @famous, @vtuber, @sex, @length)

    @recommendation_commentators = recommendation_search_for(@feeling, @vtuber, @sex)
  end

  private

  def search_for(feeling, famous, vtuber, sex, length)
    movie_style = MovieStyle.where(length: length)
    Commentator.where(feeling: feeling,
                      famous: famous,
                      vtuber: vtuber,
                      sex: sex,
                      movie_style_id: movie_style.pluck(:id)
    )
  end

  def recommendation_search_for(feeling, vtuber, sex)
    movie_style = MovieStyle.all
    Commentator.where(feeling: feeling,
                      famous: [0,1],
                      vtuber: vtuber,
                      sex: sex,
                      movie_style_id: movie_style.pluck(:id)
    )
  end
end
