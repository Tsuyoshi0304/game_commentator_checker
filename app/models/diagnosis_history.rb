class DiagnosisHistory < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :commentator

  validates :diagnosed_at, presence: true

  enum mode: { simplified: 1, normal: 2 }
end
