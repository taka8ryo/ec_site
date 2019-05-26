require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe '#index' do
    before do
      get :index
    end

    it "正常にレスポンスを返すこと" do
      expect(response).to be_success
    end

    it "200レスポンスをか返すこと" do
      expect(response).to have_http_status "200"
    end
  end
end
