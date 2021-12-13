Rails.application.routes.draw do
  resources :scores
  resources :subject_reviews
  resources :subjects
  get 'users/index'
  resources :students
  resources :users, :only =>[:show]
  match '/users',   to: 'users#index',   via: 'get'
  match '/users/:id',     to: 'users#show',       via: 'get'
  devise_for :users, :path_prefix => 'd'
  get 'home/about'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
