class DiagnosisHistory < ApplicationRecord
  belongs_to :user
  belongs_to :commentator

  validates :diagnosed_at, presence: true

  enum mode: { simplified: 1, normal: 2 }
end
