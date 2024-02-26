# frozen_string_literal: true

Rails.application.routes.draw do
  resources :categories
  resources :meals
  resources :home, only: [:index]

  get 'up' => 'rails/health#show', as: :rails_health_check

  root 'home#index'
end
