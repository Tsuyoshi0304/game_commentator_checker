module Simplified::SearchesHelper
  def diagnosis_save(commentators)
    if current_user
      if commentators.present?
        commentators.each do |commentator|
          DiagnosisHistory.create(user_id: current_user.id, commentator_id: commentator.id, diagnosed_at: DateTime.now, mode: 1)
        end
      end
    end
  end
end
