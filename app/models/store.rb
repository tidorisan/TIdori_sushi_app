class Store < ApplicationRecord

	enum no_smoking: { full_smoking_allowed: 1, separating_smoking_areas: 2, full_no_smoking: 3 }

	enum reservation: { available: 1, reservation_not_possible: 2, full_reservation_system: 3 }
end
