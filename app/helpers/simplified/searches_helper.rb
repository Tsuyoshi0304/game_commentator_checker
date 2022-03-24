module Simplified::SearchesHelper
  def simplified_diagnosis_save(commentators)
    return unless current_user && commentators.present?

    if commentators.is_a?(String)
      commentators.split.map(&:to_i).each do |commentator_id|
        DiagnosisHistory.create(user_id: current_user.id, commentator_id: commentator_id, diagnosed_at: DateTime.now, mode: 1)
      end
    else
      commentators.each do |commentator|
        DiagnosisHistory.create(user_id: current_user.id, commentator_id: commentator.id, diagnosed_at: DateTime.now, mode: 1)
      end
    end
  end
end
