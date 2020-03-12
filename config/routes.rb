Rails.application.routes.draw do
  
  
  mount RailsAdmin::Engine => '/adminkratos', as: 'rails_admin'
  devise_for :admins
  resources :categories
  devise_for :users

  resources :products do
    resources :categories
    resources :lists
  end
  resources :lists do
    resources :pops
  end
 

  root to: "home#index"
  get 'home/index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
