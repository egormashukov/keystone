Rails.application.routes.draw do

  devise_for :users

  resources :categories, except: [:edit]
  resources :products, except: [:index, :edit]
  resources :reviews, except: [:index, :show]

  root to: 'categories#index'
end
