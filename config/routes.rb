Rails.application.routes.draw do
  resources :products
  # nanti coba cari cara
  # devise_for :users, :controllers => { registrations: 'registrations' }

  # bentrok dengan namespace yang ada di products
  # devise_for :users, ActiveAdmin::Devise.config
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
end
