# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#index'

  namespace :api do
    resources :sessions, only: %i[create destroy]
  end
  resources :users
end
