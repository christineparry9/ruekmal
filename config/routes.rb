Rails.application.routes.draw do
  get 'users/show'
  get 'answers/index'
  get 'answers/show'
  get 'questions/index'
  get 'questions/show'
  get 'articles/index'
  get 'articles/show'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:show]
  resources :exercises, only: [:index, :show]
  resources :articles, only: [:index, :show]
  resources :questions, only: [:index, :show]
  resources :answers, only: [:index, :show]
end
