# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#index'

  namespace :api do
    resources :sessions, only: :create
    resources :notes, only: :create
  end
  resources :users
end
