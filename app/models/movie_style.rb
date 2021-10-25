class MovieStyle < ApplicationRecord
  has_many :commentators, dependent: :destroy

  validates :short, presence: true
	validates :single_shot, presence: true
	validates :live, presence: true
end
