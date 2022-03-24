class Normal::SearchesController < ApplicationController
  include Normal::SearchesHelper

  before_action :set_gamegenre, only: %i[new]

  before_action :to_h_commentator_params, only: %i[search]

  skip_before_action :require_login, only: %i[new take_gamegenre_children search]

  def take_gamegenre_children
    @gamegenre_children = GameGenre.find_by(genre_name: params[:parent_name].to_s, ancestry: nil).children
  end

  def new; end

  def search
    genre_name = params[:child_genre_name].nil? ? params[:normal_search][:parent_genre_name] : params[:child_genre_name]

    @commentator_params_hash.delete(:parent_genre_name)

    @commentator_params_hash.store(:genre_name, genre_name)

    @commentators = Commentator.normal_search(@commentator_params_hash).uniq

    @similar_commentators = Commentator.normal_similar_search(@commentator_params_hash).uniq if @commentators.blank?

    if @commentators.blank? && @similar_commentators.blank?
      array = []
      random_commentator = Commentator.offset(rand(Commentator.count)).first
      @random_commentator = array.push(random_commentator)
    end

    @mode = DiagnosisHistory.modes[:normal]

    normal_diagnosis_save(@commentators.presence || @similar_commentators)
  end

  private

  def set_gamegenre
    @parents = GameGenre.where(ancestry: nil)
  end

  def to_h_commentator_params
    @commentator_params_hash = params.require(:normal_search).permit(:parent_genre_name, :sex, :play_style, :is_forming_a_group, :appearance, :vtuber, :length, :live).to_h
  end
end
