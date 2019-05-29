require 'rails_helper'

RSpec.feature "Homes", type: :feature do
  scenario "ユーザー登録に遷移できるか" do
    visit root_path
    click_link "登録"
    expect(page).to have_content("Sign up")
  end

  scenario "ログインに遷移できるか" do
    visit root_path
    click_link "ログイン"
    expect(page).to have_content("Log in")
  end

  scenario "ログイン(admin)に遷移できるか" do
    visit root_path
    click_link "ログイン(admin)"
    expect(page).to have_content("Log in")
  end
end
