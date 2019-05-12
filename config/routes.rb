Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resource :basket, only: [:show]
  resources :products, only: [:new, :show, :create] do
    scope module: :products do
      resources :add_to_baskets, only: [:create]
      resources :delete_in_baskets, only: [:create]
    end
  end
end
