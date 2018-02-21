Rails.application.routes.draw do
  resources :orders
  get 'order/is_paid/:id', to: 'orders#is_paid', as: 'order_is_paid'
  resources :line_items
  resources :carts
  resources :charges


  resources :upload_gambars
  resources :merchants

  get 'product/:id', to: 'products#show', as: 'product'
  get 'products/new_arrivals'

  get 'products/most_populars'

  get 'products/official_brands'

  root 'home#index'



  # nanti coba cari cara masukkan controller registration ke
  # devise_for :users, :controllers => { registrations: 'registrations' }

  # nama path yang ada di routes.rb jangan disamakan dengan namespace yang ada di config/initializers/active_admin.rb
  # path: nya diisi sesuai namespace
  devise_for :users, ActiveAdmin::Devise.config
  devise_for :admin_users, ActiveAdmin::Devise.config.merge(path: :admin)
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
