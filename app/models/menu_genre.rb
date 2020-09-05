class MenuGenre < ApplicationRecord
	has_many :store_menus

	validates :genre_name, presence: true
	validates :display_status, presence: true
end