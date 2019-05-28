require 'rails_helper'

RSpec.feature "Products", type: :feature do
  scenario "adminは新しいproductを作成する" do
    admin = FactoryBot.create(:admin)

    visit root_path
    click_link 'ログイン(admin)'
    fill_in "Email", with: admin.email
    fill_in "Password", with: admin.password
    click_button "Log in"

    expect {
      click_link "商品登録"
      fill_in "Name", with: "Test product"
      fill_in "Description", with: "Trying out Capybara"
      fill_in "Price", with: "1000"
      fill_in "Unit", with: "yen"
      find('input[type="file"]').click
      attach_file "Image", "spec/fixtures/image/icon.jpg"
      click_button "CREATE PRODUCT"

      expect(page).to have_content "Collection"
      expect(page).to have_content "Test product"
      expect(page).to have_content "1000"
    }.to change(admin.products, :count).by(1)
  end
end
