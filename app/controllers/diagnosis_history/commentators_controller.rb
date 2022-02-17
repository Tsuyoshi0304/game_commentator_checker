class DiagnosisHistory::CommentatorsController < ApplicationController
  def show
    @diagnoses = current_user.diagnosis_histories.order(diagnosed_at: :asc).group_by { |d| [d[:diagnosed_at]] }

    @index = params[:index].to_i - 1
    @frequency = params[:frequency].to_i
    @diagnosis = @diagnoses.to_a[@index][1][@frequency]
    @commentator = @diagnosis.commentator
    @review = Review.new

    respond_to do |format|
      format.html
      format.js
    end
  end
end
