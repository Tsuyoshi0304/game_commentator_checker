require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'userモデルのバリデーション' do
    it '全ての属性でok' do
      user = build(:user)
      expect(user).to be_valid
    end

    it 'nameが空だとNG' do
      user = build(:user, name: '')
      expect(user).to be_invalid
    end

    it 'emailが空だとNG' do
      user = build(:user, email: '')
      expect(user).to be_invalid
    end

    it 'emailが重複しているとNG' do
      user = create(:user)
      user_with_duplicated_email = build(:user, email: user.email)
      expect(user_with_duplicated_email).to be_invalid
    end

    it '違うemailならok' do
      user = create(:user)
      user_with_another_email = build(:user)
      expect(user_with_another_email).to be_valid
      expect(user_with_another_email.errors).to be_empty
    end
  end
end
