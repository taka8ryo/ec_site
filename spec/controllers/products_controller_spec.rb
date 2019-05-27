require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  describe '#show' do
    it "正常にレスポンスを返すこと" do
      @product = FactoryBot.create(:product)
      get :show, params: { id: @product.id }
      expect(response).to be_successful
    end
  end

  describe "#create" do
    context "adminとして" do
      before do
        @admin = FactoryBot.create(:admin)
      end
      it "商品を追加できること" do
        product_params = FactoryBot.attributes_for(:product)
        sign_in @admin
        expect {
          post :create, params: { product: product_params }
        }.to change(@admin.products, :count).by(1)
      end
    end

    context "ゲストとして" do
      it "302レスポンスを返すこと" do
        product_params = FactoryBot.attributes_for(:product)
        post :create, params: { product: product_params }
        expect(response).to have_http_status "302"
      end
    end
  end
end
