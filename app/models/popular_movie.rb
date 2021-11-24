class PopularMovie < ApplicationRecord
  belongs_to :commentator

  validates :movie, presence: true
end
