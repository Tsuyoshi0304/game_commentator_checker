class Simplified::SearchesController < ApplicationController
  def new; end

  def search
    @feeling = params['feeling']
    @famous = params['famous']
    @vtuber = params['vtuber']
    @sex = params['sex']
    @length = params['length']
    @commentators = search_for(@feeling, @famous, @vtuber, @sex, @length)
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
end
