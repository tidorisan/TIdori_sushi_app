class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { customer: 1, store_admin: 2, site_admin: 3 }

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
