require 'rails_helper'

RSpec.describe User, type: :model do
  context "データが正しく保存される" do
    before do
      @user = User.new
      @user.id = 1
      @user.email = "test@hoge.com"
      @user.password = "test@hoge.com"
      @user.password_confirmation = "test@hoge.com"
      @user.family_name = "テスト"
      @user.first_name = "太郎"
      @user.kana_family_name = "テスト"
      @user.kana_first_name = "タロウ"
      @user.birthday = "19921021"
      @user.job_title = "店長"
      @user.permit_to_store_manager = "true"
      @user.get_restaurant_sales_permit_form = "true"
      @user.related_with_antisocial_force = "true"
      @user.mannaers_industry = "true"
      @user.unsubscribe_status = "true"
      @user.role = "customer"

      @user.save
    end
    it "全て入力してあるので保存される" do
      expect(@user).to be_valid
    end
  end
  context "データが正しく保存されない" do
    before do
      @user = User.new
      @user.id = 1
      @user.email = ""
      @user.password = "test@hoge.com"
      @user.password_confirmation = "test@hoge.com"
      @user.family_name = "テスト"
      @user.first_name = "太郎"
      @user.kana_family_name = "テスト"
      @user.kana_first_name = "タロウ"
      @user.birthday = "19921021"
      @user.job_title = "店長"
      @user.permit_to_store_manager = "true"
      @user.get_restaurant_sales_permit_form = "true"
      @user.related_with_antisocial_force = "true"
      @user.mannaers_industry = "true"
      @user.unsubscribe_status = "true"
      @user.role = "customer"

      @user.save
    end
    it "emailが入力されていないので保存されない" do
      expect(@user).to be_invalid
      expect(@user.errors[:email]).to include("を入力してください")
    end
  end
end
