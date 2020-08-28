class StoreAdminApplication < ApplicationRecord

	enum job_title: {
		president: 1,
		store_manager: 2,
		owner: 3,
		manager: 4,
		staff: 5,
		arbeit: 6,
		ceo: 7
	}
end
