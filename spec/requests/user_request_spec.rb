require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe 'rootページ' do
    context "rootページが正しく表示される" do
      before do
        get root_path
      end
      it 'リクエストは200 で成功になること' do
        expect(response.status).to eq 200
      end
    end
  end

end
