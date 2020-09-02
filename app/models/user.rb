class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
  end

  enum role: { customer: 1, store_admin: 2, site_admin: 3 }

  enum job_title: {
		社長: 1,
		店長: 2,
		オーナー: 3,
		マネージャー: 4,
		スタッフ: 5,
		アルバイト: 6,
		代表取締役: 7
	}

	has_many :stores, dependent: :destroy

	has_many :favorite_stores, dependent: :destroy
	has_many :user_favorites, through: :favorite_stores, source: :store

	has_many :store_buzzs, dependent: :destroy

	attachment :image
end
