Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  root 'tidori_sushi/stores#top'

  # 以下を追加
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  namespace :users do
    get 'store_genres/index'
    get 'store_genres/edit'
  end

  namespace :tidori_sushi do
  	get 'about' => 'homes#about'
  	post 'stores' => 'stores#search', as: 'search'
  	get 'stores/favorites' => 'stores#favorites', as: 'store_favotites'
    resources :stores, only: [:show] do
    	resources :store_buzzs, only: [:new, :create, :destroy, :index]
    	resource :favorites, only: [:create, :destroy]
      resources :menus, only: [:index]
    end
    resources :coupons, only: [:index, :show]
    get 'users/leave' => 'users#leave'
    patch 'users/leave/unsubscribe_update' => 'users#unsubscribe_update', as: 'unsubscribe_update'
    resources :users, only: [:show, :update]
    post 'store_admin_applications/confirm' => 'store_admin_applications#confirm'
    get 'store_admin_applications/success' => 'store_admin_applications#success'
    resources :store_admin_applications, only: [:new, :create]
  end

  namespace :users do
  	get 'users/confirmation' =>  'users#confirmation', as: 'confirmation'
  	get '/homes/top' => 'homes#top', as: 'homes'
  	get '/users/leave' => 'users#leave', as: 'leave'
    patch '/users/leave/unsubscribe_update' => 'users#unsubscribe_update', as: 'unsubscribe_update'
    resources :users, only: [:new, :update]
    resources :stores, only: [:new, :create, :index, :show, :edit, :update] do
      resources :menus, only: [:new, :create, :index, :show, :edit, :update]
      resources :coupons, only: [:new, :create, :index, :show, :edit, :update]
    end
    resources :store_genres, only: [:index, :create, :edit, :update]
    resources :menu_genres, only: [:index, :create, :edit, :update]
    resources :store_admin_applications, only: [:index, :show, :update]

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
