require 'rails_helper'

RSpec.describe "Users", type: :system do
  describe 'ユーザー登録に関して' do

    before do
      visit new_user_path
    end

    context '入力値が正常' do
      it '登録できること' do
        fill_in 'user[name]', with: 'name'
        fill_in 'user[email]', with: 'email@example.com'
        fill_in 'user[password]', with: 'password'
        fill_in 'user[password_confirmation]', with: 'password'
        click_button '登録'
        expect(page).to have_content 'ユーザー登録、ログインに成功しました'
        expect(current_path).to eq root_path
      end
    end

    context '名前が未入力' do
      it '登録できないこと' do
        fill_in 'user[name]', with: ''
        fill_in 'user[email]', with: 'email@example.com'
        fill_in 'user[password]', with: 'password'
        fill_in 'user[password_confirmation]', with: 'password'
        click_button '登録'
        expect(page).to have_content 'ユーザー登録に失敗しました'
        expect(current_path).to eq users_path
      end
    end

    context 'メールアドレスが未入力' do
      it '登録できないこと' do
        fill_in 'user[name]', with: 'name'
        fill_in 'user[email]', with: ''
        fill_in 'user[password]', with: 'password'
        fill_in 'user[password_confirmation]', with: 'password'
        click_button '登録'
        expect(page).to have_content 'ユーザー登録に失敗しました'
        expect(current_path).to eq users_path
      end
    end

    context 'パスワードが未入力' do
      it '登録できないこと' do
        fill_in 'user[name]', with: 'name'
        fill_in 'user[email]', with: 'email@example.com'
        fill_in 'user[password]', with: ''
        fill_in 'user[password_confirmation]', with: ''
        click_button '登録'
        expect(page).to have_content 'ユーザー登録に失敗しました'
        expect(current_path).to eq users_path
      end
    end
  end

  describe 'ログインに関して' do

    let(:user) { create(:user) }

    context '入力値が正常' do
      it 'ログインできること' do
        visit login_path
        fill_in 'email', with: user.email
        fill_in 'password', with: 'password'
        click_button 'ログイン'
        expect(page).to have_content 'ログインに成功しました'
        expect(current_path).to eq root_path
      end
    end

    context 'メールアドレスが未入力' do
      it 'ログインできないこと' do
        visit login_path
        fill_in 'email', with: ''
        fill_in 'password', with: 'password'
        click_button 'ログイン'
        expect(page).to have_content 'ログインに失敗しました'
        expect(current_path).to eq login_path
      end
    end

    context 'パスワードが未入力' do
      it 'ログインできないこと' do
        visit login_path
        fill_in 'email', with: user.email
        fill_in 'password', with: ''
        click_button 'ログイン'
        expect(page).to have_content 'ログインに失敗しました'
        expect(current_path).to eq login_path
      end
    end
  end
end
