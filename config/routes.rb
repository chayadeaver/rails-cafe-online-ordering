Rails.application.routes.draw do
  # resources :categories
  # resources :menus
  # resources :items
  # resources :orders
  # resources :carts
  root to: 'application#welcome'
  devise_for :users, :controllers => {registrations: 'registrations'}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
