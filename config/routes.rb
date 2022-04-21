# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  get '/user', to: 'user#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'foods#index'

  get '/public_recipes', to: 'public_recipes#index'
  get '/general_shopping_lists', to: 'general_shopping_lists#index'

  resources :foods
  resources :recipes
end
