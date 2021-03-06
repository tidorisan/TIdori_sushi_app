# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
 Rails.application.config.assets.precompile += %w(
 	sign_up.css
 	user_home_top.css
 	sign_in.css
 	users_menu_genres.css
 	user_stote_new.css
 	user_stote_edit.css
 	user_stote_show.css
 	user_store_genre_index.css
 	user_store_index.css
 	user_store_genre_edit.css
 	user_cupon_index.css
 	user_coupon_edit.css
 	user_coupon_show.css
 	user_coupon_new.css
 	user_menu_index.css
 	user_menu_show.css
 	user_menu_edit.css
 	user_menu_new.css
 	user_store_admin_application_index.css
 	user_store_admin_application_show.css
 	user_user_confirmation.css
 	user_user_new.css
 	tidori_sushi_root.css
 	application_html.css
 	tidori_sushi_store_search.css
 	tidori_sushi_store_favorites.css
 	tidori_sushi_store_show.css
 	tidori_sushi_buzz_new.css
 	tidori_sushi_coupon_index.css
 	tidori_sushi_coupon_show.css
 	tidori_user_user.css
 	passwords_new.css
 	user_user_show.css
 	user_user_edit.css
 	user_user_leave.css
 	user_customer.css
 )
