# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'public_recipes/index'
  # get 'general_shopping_lists/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'foods#index'

  get '/public_recipes', to: 'public_recipes#index'
  get '/general_shopping_lists', to: 'general_shopping_lists#index'

  resources :foods
  resources :recipes
end
