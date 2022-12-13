Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:show, :update]
  resources :exercises, only: [:index, :show]
  resources :articles, only: [:index, :show]
  resources :questions, only: [:index, :show]
  resources :answers, only: [:index, :show]
  resources :programs, only: [:index]
  post '/articles/check_answer', to: 'articles#check_answer', as: 'check_answer'
end
