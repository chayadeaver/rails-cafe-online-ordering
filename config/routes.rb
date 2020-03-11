Rails.application.routes.draw do
  get 'carts/:id' => "carts#show", as: "cart"
  delete 'carts/:id' => "carts#destroy"

  post 'line_items/:id/add' => "line_items#add_quantity", as: "line_item_add"
  post 'line_items/:id/reduce' => "line_items#reduce_quantity", as: "line_item_reduce"
  post 'line_items' => "line_items#create"
  get 'line_items/:id' => "line_items#show", as: "line_item"
  delete 'line_items/:id' => "line_items#destroy"

  resources :categories do
    resources :items
  end
  resources :menus do 
    resources :items
  end
  resources :items
  resources :orders
  root to: 'application#welcome'
  get 'users/show'
  get '/users/:id', to: 'users#show'
  devise_for :users, :controllers => {registrations: 'registrations', omniauth_callbacks: 'callbacks'}
  devise_scope :user do
    get '/login', to: 'devise/sessions#new'
    get '/signup', to: 'devise/registrations#new'
  end
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
