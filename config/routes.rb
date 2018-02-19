Rails.application.routes.draw do
  resources :products
  root "home#index"

  # nanti coba cari cara masukkan controller registration ke
  # devise_for :users, :controllers => { registrations: 'registrations' }

  # nama path yang ada di routes.rb jangan disamakan dengan namespace yang ada di config/initializers/active_admin.rb
  # path: nya diisi sesuai namespace
  devise_for :users, ActiveAdmin::Devise.config
  # devise_for :users, ActiveAdmin::Devise.config.merge({path: :user_belilah})

  devise_for :admin_users, ActiveAdmin::Devise.config.merge({path: :admin})
  # devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
