class NameSearchesController < ApplicationController
  def index
    @commentators = {} if name_params == {}

    return if name_params[:name].blank?

    @commentators = Commentator.commentator_search(name_params).includes(:movie_style)

    @similar_commentators = @commentators
  end

  private

  def name_params
    params.fetch(:commentator_search, {}).permit(:name)
  end
end
