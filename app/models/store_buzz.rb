class StoreBuzz < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :store, optional: true

  attachment :image

  validates :title, presence: true
  validates :detail, presence: true
end
