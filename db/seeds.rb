# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

	User.create!(email: 'site@hoge.com', password: 'site@hoge.com', password_confirmation: 'site@hoge.com', role: 3)
	User.create!(email: 'store1@hoge.com', password: 'store1@hoge.com', password_confirmation: 'store1@hoge.com', role: 2)
	User.create!(email: 'store2@hoge.com', password: 'store2@hoge.com', password_confirmation: 'store2@hoge.com', role: 2)
	User.create!(email: 'store3@hoge.com', password: 'store3@hoge.com', password_confirmation: 'store3@hoge.com', role: 2)
	User.create!(email: 'store4@hoge.com', password: 'store4@hoge.com', password_confirmation: 'store4@hoge.com', role: 2)
	User.create!(email: 'store5@hoge.com', password: 'store5@hoge.com', password_confirmation: 'store5@hoge.com', role: 2)
	User.create!(email: 'store6@hoge.com', password: 'store6@hoge.com', password_confirmation: 'store6@hoge.com', role: 2)
	User.create!(email: 'store7@hoge.com', password: 'store7@hoge.com', password_confirmation: 'store7@hoge.com', role: 2)
	User.create!(email: 'customer1@hoge.com', password: 'customer1@hoge.com', password_confirmation: 'customer1@hoge.com', role: 1, image: open("./app/assets/images/image05.jpg"))
	User.create!(email: 'customer2@hoge.com', password: 'customer2@hoge.com', password_confirmation: 'customer2@hoge.com', role: 1, image: open("./app/assets/images/image05.jpg"))

	StoreGenre.create!(:genre_name => "寿司")
	StoreGenre.create!(:genre_name => "回転寿司")
	StoreGenre.create!(:genre_name => "立ち食い寿司")

	Store.create!(:user_id => 2,
				 :address => "静岡県浜松市中区中央2-11-17",
				 :latitude => 34.7088704,
				 :longitude => 137.7387655,
				 :postal_code => "4300989",
				 :store_name => '千鳥寿司',
				 :kana_store_name => "チドリズシ",
				 :phone_number => "09088775544",
				 :store_genre_id => 1,
				 :reservation_of_considerations => 'なし',
				 :reservation => 1,
				 :traffic_method => '浜松駅中央改札から徒歩１０分',
				 :business_day => '毎週火曜日以外',
				 :regular_holiday => '毎週火曜日',
				 :consumption_budget => '[昼]1000~3000円  [夜]2000~5000円',
				 :private_room => true,
				 :reserved => true,
				 :parking => 4,
				 :no_smoking => 3,
				 :equipment => 'カウンター5席,座敷３席ございます',
				 :news => '6/20より静岡県の要請により9/25日まで、22:00,までの営業とさせていただきます。　皆さま宜しくお願いいたします。',
				 :display_status => true,
				 :credit_card => "visa",
				 :e_money => "paypay, Linepay",
				 image: open("./app/assets/images/image05.jpg"),
				 :comment => '[2020 ミシュランガイド]で一つ星を獲得いたしました。長屋が連なる空堀商店街近くにひっそりと佇む、古民家を改築した落ち着いた空間。'
				)
	Store.create!(:user_id => 3,
				 :address => "静岡県浜松市中区板屋町2-106",
				 :latitude => 34.70680249999999,
				 :longitude => 137.7338466,
				 :postal_code => "4300989",
				 :store_name => '泉水',
				 :kana_store_name => "イズミミズ",
				 :phone_number => "090877555",
				 :branch_name => 'なし',
				 :kana_branch_name => 'なし',
				 :store_genre_id => 2,
				 :reservation_of_considerations => 'なし',
				 :reservation => 3,
				 :traffic_method => 'お近くの葉柱線地下鉄[南口]から徒歩3分です',
				 :business_day => '定休日以外',
				 :regular_holiday => '日月祝',
				 :consumption_budget => '[昼]1500~3000円  [夜]3000~6000円',
				 :private_room => true,
				 :reserved => true,
				 :parking => 3,
				 :no_smoking => 2,
				 :equipment => 'カウンター5席と座敷が2席ございます。',
				 :home_page => 'https://izumimizu.com/xxxxxxxx',
				 :news => '衛星対策について',
				 :display_status => true,
				 :credit_card => "visa JCB",
				 :e_money => "paypay",
				 image: open("./app/assets/images/image02.jpg"),
				 :comment => '毎朝市場で仕入れた新鮮な魚介類を惜しみなく使用した鉄火丼がおすすめです。'
				)

	Store.create!(:user_id => 4,
				 :address => " 静岡県浜松市中区砂山町360-6",
				 :latitude => 34.7015307,
				 :longitude => 137.7343563,
				 :postal_code => "4300987",
				 :store_name => '末広鮨',
				 :kana_store_name => "スエヒロスシ",
				 :phone_number => "0907733",
				 :branch_name => 'なし',
				 :kana_branch_name => 'なし',
				 :store_genre_id => 1,
				 :reservation_of_considerations => 'ご予約の際は前日までにお電話ください',
				 :reservation => 1,
				 :traffic_method => 'ありません',
				 :business_day => '毎週水曜日と以外',
				 :regular_holiday => '毎週水曜日',
				 :consumption_budget => '[昼]1500~3000円  [夜]3000~6000円',
				 :private_room => false,
				 :reserved => false,
				 :parking => 2,
				 :no_smoking => 3,
				 :equipment => 'カウンター10席あります。',
				 :home_page => 'なし',
				 :news => 'なし',
				 :display_status => true,
				 :credit_card => "visa JCB",
				 :e_money => "paypay, Linepay",
				 image: open("./app/assets/images/image01.jpg"),
				 :comment => '創業昭和3年の伝統を重ねる,地元客御用達の気軽に立ち寄れる寿司店です。'
				)
	Store.create!(:user_id => 4,
				 :address => " 静岡県浜松市中区佐藤町11-6",
				 :latitude => 34.714058,
				 :longitude => 137.747729,
				 :postal_code => "995544",
				 :store_name => '末広鮨',
				 :kana_store_name => "スエヒロスシ",
				 :phone_number => "0907755",
				 :branch_name => 'なし',
				 :kana_branch_name => 'なし',
				 :store_genre_id => 2,
				 :reservation_of_considerations => 'ご予約の際は前日までにお電話ください',
				 :reservation => 2,
				 :traffic_method => 'ありません',
				 :business_day => '毎週水曜日以外',
				 :regular_holiday => '毎週水曜日',
				 :consumption_budget => '[昼]1500~3000円  [夜]3000~6000円',
				 :private_room => false,
				 :reserved => false,
				 :parking => 3,
				 :no_smoking => 3,
				 :equipment => 'カウンター10席ございます。',
				 :home_page => 'なし',
				 :news => 'なし',
				 :display_status => true,
				 :credit_card => "visa JCB",
				 :e_money => "paypay, Linepay",
				 image: open("./app/assets/images/image04.jpg"),
				 :comment => '住宅街に佇むカジュアルな雰囲気のすし処です。'
				)
	Store.create!(:user_id => 6,
				 :address => " 静岡県浜松市中区中央11-6",
				 :latitude => 34.7015307,
				 :longitude => 137.7343563,
				 :postal_code => "4300985",
				 :store_name => '長下鮨',
				 :kana_store_name => "ナガシタスシ",
				 :phone_number => "0908877",
				 :branch_name => 'なし',
				 :kana_branch_name => 'なし',
				 :store_genre_id => 1,
				 :reservation_of_considerations => '特にございません',
				 :reservation => 2,
				 :traffic_method => '八幡駅東口徒歩15分',
				 :business_day => '毎週金曜日以外',
				 :regular_holiday => '毎週金曜日',
				 :consumption_budget => '[昼]1500~3000円  [夜]2000~4000円',
				 :private_room => false,
				 :reserved => false,
				 :parking => 5,
				 :no_smoking => 3,
				 :equipment => 'カウンター10席あります。ボックス席が3つございます',
				 :news => 'お問い合わせのお電話お待ちしております',
				 :display_status => true,
				 :credit_card => "visa JCB",
				 :e_money => "paypay, Linepay",
				 image: open("./app/assets/images/image02.jpg"),
				 :comment => 'オーガニックにこだわった旬の食材を堪能してください。'
				)
	Store.create!(:user_id => 5,
				 :address => " 静岡県浜松市中区中央4-6",
				 :latitude => 34.706659,
				 :longitude => 135.73847,
				 :postal_code => "0988776",
				 :store_name => '一の膳',
				 :kana_store_name => "イチノゼン",
				 :phone_number => "09080734422",
				 :store_genre_id => 3,
				 :reservation_of_considerations => '特にございません',
				 :reservation => 2,
				 :traffic_method => '八幡駅東口徒歩15分',
				 :business_day => '毎週水曜日以外',
				 :regular_holiday => '毎週水曜日',
				 :consumption_budget => '[昼]1500~3000円  [夜]2000~4000円',
				 :private_room => true,
				 :reserved => true,
				 :parking => 2,
				 :no_smoking => 3,
				 :equipment => 'カウンター6席あります。ボックス席が3つございます',
				 :news => 'テイクアウトに関してはお電話ください',
				 :display_status => true,
				 :credit_card => "visa JCB",
				 :e_money => "paypay, Linepay",
				 image: open("./app/assets/images/image02.jpg"),
				 :comment => '天然ものにこだわった鮮度抜のお寿司を堪能ください。'
				)

	Store.create!(:user_id => 5,
				 :address => " 静岡県浜松市中区中央4-6",
				 :latitude => 36.706659,
				 :longitude => 133.73847,
				 :postal_code => "4808776",
				 :store_name => '一の膳',
				 :kana_store_name => "イチノゼン",
				 :phone_number => "090088776",
				 :branch_name => '浜松店',
				 :kana_branch_name => '浜松店',
				 :store_genre_id => 3,
				 :reservation_of_considerations => '特にございません',
				 :reservation => 2,
				 :traffic_method => '八幡駅東口徒歩15分',
				 :business_day => '毎週水曜日以外',
				 :regular_holiday => '毎週水曜日',
				 :consumption_budget => '[昼]1500~3000円  [夜]2000~4000円',
				 :private_room => false,
				 :reserved => false,
				 :parking => 5,
				 :no_smoking => 2,
				 :equipment => 'カウンター4席あります。ボックス席が3つございます',
				 :news => 'お問い合わせのお電話お待ちしております',
				 :display_status => true,
				 :credit_card => "visa JCB",
				 :e_money => "paypay, Linepay",
				 image: open("./app/assets/images/image01.jpg"),
				 :comment => 'お寿司を食べて元気になろう!!。'
				)
	Store.create!(:user_id => 8,
				 :address => " 静岡県浜松市中区中央2-6",
				 :latitude => 34.710535,
				 :longitude => 137.739949,
				 :postal_code => "4320088",
				 :store_name => '海',
				 :kana_store_name => "ウミ",
				 :phone_number => "430097",
				 :branch_name => '浜松店',
				 :kana_branch_name => '浜松店',
				 :store_genre_id => 1,
				 :reservation_of_considerations => '特にございません',
				 :reservation => 2,
				 :traffic_method => '八幡駅東口徒歩15分',
				 :business_day => '毎週水曜日以外',
				 :regular_holiday => '毎週水曜日',
				 :consumption_budget => '[昼]1500~3000円  [夜]2000~4000円',
				 :private_room => false,
				 :reserved => false,
				 :parking => 5,
				 :no_smoking => 3,
				 :equipment => 'カウンター4席あります。ボックス席が3つございます',
				 :display_status => true,
				 :credit_card => "visa JCB",
				 :e_money => "paypay, Linepay",
				 image: open("./app/assets/images/image03.jpg"),
				 :comment => '心地よい空間で、職人によるこだわりの握りをご堪能ください。'
				)



	StoreAdminApplication.create!(
		:address => "静岡県浜松市中区中央2-8-17",
		:postal_code => 998766,
		:store_name => 'すし太一',
	 	:kana_store_name => "スシタイチ",
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

	MenuGenre.create!(:genre_name => '料理')
	MenuGenre.create!(:genre_name => 'ドリンク')

	Store.all.each do |store|
		store.store_menus.create!(
			name:  "漬けマグロ",
			comment: "旬のマグロを使用しております。",
			tax_excluded_price: 400,
			menu_genre_id: 1
		)
	end
	Store.all.each do |store|
		store.store_menus.create!(
			name:  "鉄火巻き",
			tax_excluded_price: 300,
			menu_genre_id: 1
		)
	end
	Store.all.each do |store|
		store.store_menus.create!(
			name:  "サーモン",
			tax_excluded_price: 200,
			menu_genre_id: 1
		)
	end
	Store.all.each do |store|
		store.store_menus.create!(
			name:  "えんがわ",
			tax_excluded_price: 200,
			menu_genre_id: 1
		)
	end
	Store.all.each do |store|
		store.store_menus.create!(
			name:  "しめ鯖",
			tax_excluded_price: 300,
			menu_genre_id: 1
		)
	end
	Store.all.each do |store|
		store.store_menus.create!(
			name:  "日本酒",
			tax_excluded_price: 300,
			menu_genre_id: 2
		)
	end
	Store.all.each do |store|
		store.store_menus.create!(
			name:  "烏龍茶",
			tax_excluded_price: 300,
			menu_genre_id: 2
		)
	end

	Store.all.each do |store|
		store.coupons.create!(
			:reason => '開店１周年記念セール',
		    :detail =>  '2割引',
		    :target => "ちらし寿司",
    		:expiration_date => 20,
    		image: open("./app/assets/images/image01.jpg"),
		    :store_id => 1
		)
	end


	Coupon.create!(:reason => '開店１周年記念セール',
				  :detail =>  '1割引',
				  :target => "全品",
				  :expiration_date => 20,
				  image: open("./app/assets/images/image01.jpg"),
				  :store_id => 1)



	StoreAdminApplication.create!(
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

	FavoriteStore.create!(:store_id => 1,
						 :user_id => 9,
						)
	FavoriteStore.create!(:store_id => 2,
						 :user_id => 9,
						)
	FavoriteStore.create!(:store_id => 3,
						 :user_id => 9,
						)

	User.all.each do |user|
		user.store_buzzs.create!(
			store_id: 1,
			title: "おすすめ店です",
			detail: "大将が奇策でいい人です。友人と行ったのですがその日に仕入れた旬な素材をつき次に出してくれて、
					またそれが非常に美味しい!",
			visit_date:  20200913,
			use_time: 2,
			pay_price: 4000,
			image: open("./app/assets/images/image01.jpg")
		)
	end



