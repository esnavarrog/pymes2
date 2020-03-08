Rails.application.routes.draw do
  resources :categories
  devise_for :users
  resources :products do
    resources :categories
  end
  resources :products
  resources :articles do
    resources :products
    resources :users
  end

  root to: "home#index"
  get 'home/index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
