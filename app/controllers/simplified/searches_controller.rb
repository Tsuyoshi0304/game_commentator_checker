class Simplified::SearchesController < ApplicationController
  include Simplified::SearchesHelper
  
  skip_before_action :require_login, only: %i[new search]
  
  def new; end

  def search
    @commentators = Commentator.simple_search(commentator_params)
    if @commentators.blank?
      @similar_commentators = Commentator.simple_similar_search(commentator_params)
    end

    # binding.pry

    diagnosis_save(@commentators.present? ? @commentators : @similar_commentators)
  end

  private

  def commentator_params
    params.require(:simple_search).permit(:feeling, :famous, :vtuber, :sex, :length)
  end
end
