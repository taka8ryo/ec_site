require 'rails_helper'

RSpec.describe User, type: :model do

  it "有効なファクトリを持つこと" do
    expect(FactoryBot.build(:user)).to be_valid
  end

  it "メールがなければ無効" do
    user = FactoryBot.build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end

  it "パスワードがなければ無効" do
    user = FactoryBot.build(:user, password: nil)
    user.valid?
    expect(user.errors[:password]).to include("can't be blank")
  end

  it "重複したメールなら無効" do
    FactoryBot.create(:user, email: "sample@example.com")
    user = FactoryBot.build(:user, email: "sample@example.com")
    user.valid?
    expect(user.errors[:email]).to include("has already been taken")
  end
end
