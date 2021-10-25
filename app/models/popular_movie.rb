class PopularMovie < ApplicationRecord
  belongs_to :commentator

  validates :movie, presence: true
  validates :commentator_id, presence: true
end
