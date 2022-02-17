class DiagnosisHistoriesController < ApplicationController
  def index
    @diagnoses = current_user.diagnosis_histories.order(diagnosed_at: :asc).group_by { |d| [d[:diagnosed_at]] }

    # @diagnoses_pagination = Kaminari.paginate_array(@diagnoses.to_a).page(params[:page]).per(10)
  end
end
