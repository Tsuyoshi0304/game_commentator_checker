class Simplified::SearchesController < ApplicationController
  def new; end

  def search
    @feeling = params['feeling']
    @famous = params['famous']
    @vtuber = params['vtuber']
    @sex = params['sex']
    @length = params['length']

    if params['length'] == '1'
      @recommendation_length = '2'
    else
      @recommendation_length = '1'
    end

    #if params['famous'] == '1'
    #  @recommendation_famous = '0'
    #else
    #  @recommendation_famous = '1'
    #end 

    @commentators = search_for(@feeling, @famous, @vtuber, @sex, @length)
    @recommendation_commentators = recommendation_search_for(@feeling, @famous, @vtuber, @sex, @recommendation_length)
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

  def recommendation_search_for(feeling, famous, vtuber, sex, recommendation_length)
    movie_style = MovieStyle.where(length: recommendation_length)
    Commentator.where(feeling: feeling,
                      famous: famous,
                      vtuber: vtuber,
                      sex: sex,
                      movie_style_id: movie_style.pluck(:id)
    )
  end
end
