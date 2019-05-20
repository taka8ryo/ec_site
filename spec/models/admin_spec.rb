require 'rails_helper'

RSpec.describe Admin, type: :model do
  it "有効なファクトリを持つこと" do
    expect(FactoryBot.build(:admin)).to be_valid
  end

  it "メールがなければ無効" do
    admin = FactoryBot.build(:admin, email: nil)
    admin.valid?
  end

  it "パスワードがなければ無効" do
    admin = FactoryBot.build(:admin, password: nil)
    admin.valid?
  end

  it "重複したメールなら無効" do
    FactoryBot.create(:user, email: "tester@example.com")
    admin = FactoryBot.build(:user, email: "tester@example.com")
    admin.valid?
  end
end
