class Store < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  enum no_smoking: { 完全喫煙可: 1, 分煙: 2, 全面禁煙: 3 }

  enum reservation: { 予約可: 1, 予約不可: 2, 完全予約制: 3 }

  enum store_genre: { 寿司: 1, 回転寿司: 2, 立ち食い寿司: 3 }

  belongs_to :user, optional: true

  belongs_to :store_genre

  has_many :favorite_stores, dependent: :destroy

  has_many :coupons, dependent: :destroy

  has_many :store_menus, dependent: :destroy

  has_many :store_buzzs, dependent: :destroy

  attachment :image

  def favorited_by?(user)
    favorite_stores.where(user_id: user.id).exists?
  end

  validates :store_name, presence: true,
                         length: { maximum: 50 }
  validates :kana_store_name, presence: true,
                              length: { maximum: 50 }
  validates :address, presence: true
  validates :postal_code, presence: true,
                          numericality: true
  validates :phone_number, presence: true,
                           numericality: true
  validates :store_genre_id, presence: true
  validates :reservation, presence: true
  validates :reservation_of_considerations, presence: true,
                                            length: { maximum: 200 }
  validates :traffic_method, presence: true,
                             length: { maximum: 500 }
  validates :business_day, presence: true,
                           length: { maximum: 200 }
  validates :regular_holiday, presence: true,
                              length: { maximum: 200 }
  validates :consumption_budget, presence: true,
                                 length: { maximum: 200 }
  validates :credit_card, presence: true
  validates :e_money, presence: true,
                      length: { maximum: 100 }

  validates :private_room, presence: true
  validates :reserved, presence: true

  validates :equipment, presence: true,
                        length: { maximum: 500 }
  validates :parking, presence: true,
                      length: { maximum: 100 }
  validates :no_smoking, presence: true
  validates :comment, presence: true,
                      length: { maximum: 300 }
  validates :home_page, length: { maximum: 200 }
  validates :news, length: { maximum: 200 }
end
