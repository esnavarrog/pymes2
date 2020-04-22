Rails.application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/adminkratos', as: 'rails_admin'
  
  root to: "home#index"
  get 'users/index'
  get 'search' => 'home#search'
  get 'pages/sobrenosotros'
  get 'pages/reglamento'
  get 'pages/sugerencia'
  get 'pages/terminosycondiciones'
  
  resources :messages


  
  devise_for :users, controllers: { 
    sessions: 'users/sessions',
    registrations: 'registrations',
    :omniauth_callbacks => "users/omniauth_callbacks" 
  }

  

  # resources :products, except: [:index, :show]
  resources :categories
  resources :users, only: [:index, :show]
  


  resources :products do
    resources :categories
    resources :lists
    resources :comments
    resources :messages
    resources :articles
  end
  resources :lists do
    resources :pops
  end

  resources :friendships, only: [:create, :destroy]
 

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
