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

  enum job_title: { 社長: 1,
                    店長: 2,
                    オーナー: 3,
                    マネージャー: 4,
                    スタッフ: 5,
                    アルバイト: 6,
                    代表取締役: 7,
                  }

  has_many :stores, dependent: :destroy

  has_many :favorite_stores, dependent: :destroy
  has_many :user_favorites, through: :favorite_stores, source: :store

  has_many :store_buzzs, dependent: :destroy

  validates :family_name, presence: true, unless: :devise_modules?
  validates :first_name, presence: true, unless: :devise_modules?
  validates :kana_family_name, presence: true, unless: :devise_modules?
  validates :kana_first_name, presence: true, unless: :devise_modules?
  validates :birthday, presence: true,
                       numericality: true
  validates :permit_to_store_manager, presence: true, unless: :devise_modules?
  validates :get_restaurant_sales_permit_form, presence: true, unless: :devise_modules?
  validates :related_with_antisocial_force, presence: true, unless: :devise_modules?
  validates :mannaers_industry, presence: true, unless: :devise_modules?
  validates :role, presence: true
end
