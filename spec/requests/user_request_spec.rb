require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe '顧客利用者画面の表示' do
    context "顧客利用者画面正しく表示される" do
      before do
        get posts_new_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end

end
