class DiagnosisHistoriesController < ApplicationController
  def index
    @diagnoses = current_user.diagnosis_histories.order(diagnosed_at: :asc).group_by {|d| [d[:diagnosed_at]]}
  end
end
