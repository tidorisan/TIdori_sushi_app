class StoreAdminApplication < ApplicationRecord
  enum job_title: {
    社長: 1,
    店長: 2,
    オーナー: 3,
    マネージャー: 4,
    スタッフ: 5,
    アルバイト: 6,
    代表取締役: 7,
  }

  validates :address, presence: true
  validates :postal_code, presence: true,
                          numericality: true
  validates :store_name, presence: true
  validates :kana_store_name, presence: true

  validates :phone_number, presence: true,
                           numericality: true
  validates :email, presence: true

  validates :family_name, presence: true

  validates :first_name, presence: true

  validates :kana_family_name, presence: true
  validates :kana_first_name, presence: true
  validates :birthday, presence: true,
                       numericality: true
  validates :job_title, presence: true
  validates :permit_to_store_manager, presence: true

  validates :get_restaurant_sales_permit_form, presence: true
  validates :related_with_antisocial_force, presence: true

  validates :mannaers_industry, presence: true
end
