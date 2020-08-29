# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

	Store.create(:user_id => 1,
				 :address => "静岡県浜松市中区中央2-11-17",
				 :postal_code => 998766,
				 :store_name => '千鳥寿司',
				 :kana_store_name => "チドリズシ",
				 :phone_number => 987655,
				 :branch_name => 'なし',
				 :kana_branch_name => 'なし',
				 :store_genre => 1,
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
				 :news => 'なし',
				 :display_status => true
				)

	StoreAdminApplication.create(
		:address => "静岡県浜松市中区中央2-11-17",
		:postal_code => 998766,
		:store_name => '千鳥寿司',
	 	:kana_store_name => "チドリズシ",
	 	:phone_number => 987655,
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