class User < ApplicationRecord
  authenticates_with_sorcery!
  mount_uploader :avatar, AvatarUploader

  has_many :diagnosis_histories, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :email, uniqueness: true, presence: true
  validates :password, length: { minimum: 3 }, on: :create, if: -> { new_record? || changes[:crypted_password] }

  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :reset_password_token, uniqueness: true, allow_nil: true

  def own?(object)
    id == object.user_id
  end
end
