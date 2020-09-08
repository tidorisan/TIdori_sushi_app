# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

	User.create!(email: 'site@hoge.com', password: 'site@hoge.com', password_confirmation: 'site@hoge.com', role: 3)
	User.create!(email: 'store1@hoge.com', password: 'store1@hoge.com', password_confirmation: 'store1@hoge.com', role: 2)
	User.create!(email: 'store2@hoge.com', password: 'store2@hoge.com', password_confirmation: 'store2@hoge.com', role: 2)
	User.create!(email: 'store3@hoge.com', password: 'store3@hoge.com', password_confirmation: 'store3@hoge.com', role: 2)
	User.create!(email: 'customer@hoge.com', password: 'customer@hoge.com', password_confirmation: 'customer@hoge.com', role: 1)

	StoreGenre.create(:genre_name => "寿司")
	StoreGenre.create(:genre_name => "回転寿司")
	StoreGenre.create(:genre_name => "立ち食い寿司")

	Store.create(:user_id => 1,
				 :address => "静岡県浜松市中区中央2-11-17",
				 :latitude => 34.7088704,
				 :longitude => 137.7387655,
				 :postal_code => 998766,
				 :store_name => '千鳥寿司',
				 :kana_store_name => "チドリズシ",
				 :phone_number => 997655,
				 :branch_name => 'なし',
				 :kana_branch_name => 'なし',
				 :store_genre_id => 1,
				 :reservation_of_considerations => 'なし',
				 :reservation => 1,
				 :traffic_method => 'なし',
				 :business_day => '毎週火曜日以外',
				 :regular_holiday => '毎週火曜日',
				 :consumption_budget => '1000~3000円',
				 :private_room => true,
				 :reserved => true,
				 :parking => 4,
				 :no_smoking => 3,
				 :equipment => 'カウンター席あり',
				 :home_page => 'なし',
				 :news => 'コロナ対策について',
				 :display_status => true,
				 :e_money => "paypay, Linepay",
				 :comment => '[2020 ミシュランガイド]で一つ星を獲得いたしました。長屋が連なる空堀商店街近くにひっそりと佇む、古民家を改築した落ち着いた空間。'
				)
	Store.create(:user_id => 2,
				 :address => "静岡県浜松市中区板屋町2-106",
				 :latitude => 34.70680249999999,
				 :longitude => 137.7338466,
				 :postal_code => 987555,
				 :store_name => '泉水',
				 :kana_store_name => "イズミミズ",
				 :phone_number => 987655,
				 :branch_name => 'なし',
				 :kana_branch_name => 'なし',
				 :store_genre_id => 2,
				 :reservation_of_considerations => 'なし',
				 :reservation => 3,
				 :traffic_method => 'お近くの葉柱線地下鉄[南口]から徒歩3分です',
				 :business_day => '毎週水曜日以外',
				 :regular_holiday => '毎週水曜日',
				 :consumption_budget => '1400~2000円',
				 :private_room => true,
				 :reserved => true,
				 :parking => 3,
				 :no_smoking => 2,
				 :equipment => 'カウンター席と座敷があります。',
				 :home_page => 'なし',
				 :news => '衛星対策について',
				 :display_status => true,
				 :e_money => "paypay",
				 :comment => '毎朝市場で仕入れた新鮮な魚介類を惜しみなく使用した鉄火丼がおすすめです。'
				)

	Store.create(:user_id => 3,
				 :address => " 静岡県浜松市中区砂山町360-6",
				 :latitude => 34.7015307,
				 :longitude => 137.7343563,
				 :postal_code => 988776,
				 :store_name => '末広鮨',
				 :kana_store_name => "スエヒロスシ",
				 :phone_number => 986655,
				 :branch_name => 'なし',
				 :kana_branch_name => 'なし',
				 :store_genre_id => 3,
				 :reservation_of_considerations => 'ご予約の際は前日までにお電話ください',
				 :reservation => 2,
				 :traffic_method => 'ありません',
				 :business_day => '毎週水曜日以外',
				 :regular_holiday => '毎週水曜日',
				 :consumption_budget => '3400~6000円',
				 :private_room => false,
				 :reserved => false,
				 :parking => 5,
				 :no_smoking => 3,
				 :equipment => '特になし',
				 :home_page => 'なし',
				 :news => 'なし',
				 :display_status => true,
				 :e_money => "paypay, Linepay",
				 :comment => '毎朝市場で仕入れた新鮮な魚介類を惜しみなく使用した鉄火丼がおすすめです。'
				)

	StoreAdminApplication.create(
		:address => "静岡県浜松市中区中央2-11-17",
		:postal_code => 998766,
		:store_name => '千鳥寿司',
	 	:kana_store_name => "チドリズシ",
	 	:phone_number => 87655,
	 	:branch_name => 'なし',
	 	:kana_branch_name => 'なし',
	 	:email => 'home@gmeil.com',
	 	:family_name => '鈴木',
	 	:first_name => '悟',
	 	:kana_family_name => 'スズキ',
		:kana_first_name => 'サトル',
		:birthday => '19960723',
		:job_title => 1,
		:permit_to_store_manager => true,
		:get_restaurant_sales_permit_form => true,
		:related_with_antisocial_force => true,
		:mannaers_industry => true,
		:process_status => true
		)

	MenuGenre.create(:genre_name => '料理')
	MenuGenre.create(:genre_name => 'ドリンク')

	StoreMenu.create(:store_id => 1,
					 :name => "鉄火巻き",
					 :comment => "おいしいです。",
					 :tax_excluded_price => 1000,
					 :menu_genre_id  => 1,)

	Coupon.create(:reason => '売りたいので', :detail =>  '2割引', :target => "全品", :writing => '特になし', :expiration_date => 23, :store_id => 1)

	StoreAdminApplication.create(
		:address => "静岡県浜松市中区中央2-11-17",
	    :postal_code => 2277884,
	    :store_name => '千鳥寿司',
	    :kana_store_name => 'チドリズシ',
	    :phone_number => 4455566,
	    :email => "hoge@gmail.com",
	    :family_name => '夏目',
	    :first_name => '正人',
	    :kana_family_name => 'ナツメ',
	    :kana_first_name => 'マサト',
	    :birthday => 19980727,
	    :job_title => 1,
	    :permit_to_store_manager => true,
	    :get_restaurant_sales_permit_form => true,
	    :related_with_antisocial_force => true,
	    :mannaers_industry => true,
	    )


