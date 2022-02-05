module Normal::SearchesHelper
  def diagnosis_save
    if @commentators.present?
      @commentators.each do |commentator|
        @diagnosis = DiagnosisHistory.create(user_id: current_user.id, commentator_id: commentator.id, diagnosed_at: DateTime.now, mode: 2)
      end
    else
      @similar_commentators.each do |commentator|
        @diagnosis = DiagnosisHistory.create(user_id: current_user.id, commentator_id: commentator.id, diagnosed_at: DateTime.now, mode: 2)
      end
    end
  end
end
