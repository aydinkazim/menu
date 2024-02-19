# frozen_string_literal: true

Rails.application.routes.draw do
  # resources :meals, only: [:index, :show]
  resources :home
  resources :meals
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  root 'home#index'
end
