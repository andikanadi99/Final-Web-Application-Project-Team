# frozen_string_literal: true

Rails.application.routes.draw do
  resources :evaluations
  resources :presentations
  devise_for :users

  resources :presentations do
    resources :evaluations
  end

  resources :users do
    resources :presentations
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Starting page for our website
  root 'main#index'

  # route to admin interface
  get 'admin', to: 'admin#index'
end
