class User < ApplicationRecord
  authenticates_with_sorcery!
  mount_uploader :avatar, AvatarUploader
  
  has_many :diagnosis_histories, dependent: :destroy

  validates :email, uniqueness: true, presence: true
  validates :password, presence: true, on: :create
end
