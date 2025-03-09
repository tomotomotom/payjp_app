Rails.application.routes.draw do
  get 'cards/new'
  get 'users/show'
  get 'items/index'
  devise_for :users
  root 'items#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :update]
  resources :cards, only: [:new, :create]
  resources :items, only: :order do
    post 'order', on: :member
  end
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
