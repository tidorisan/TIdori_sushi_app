class StoreAdminApplication < ApplicationRecord

	enum job_title: {
		社長: 1,
		店長: 2,
		オーナー: 3,
		マネージャー: 4,
		スタッフ: 5,
		アルバイト: 6,
		代表取締役: 7
	}
end
