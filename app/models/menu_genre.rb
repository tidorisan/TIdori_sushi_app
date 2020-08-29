class MenuGenre < ApplicationRecord

	belongs_to :store_menu, optional: true
end
