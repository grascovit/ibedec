# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  root 'static_pages#home'

  get 'inicio' => 'static_pages#home', as: :home
  get 'sobre' => 'static_pages#about', as: :about
  get 'contato' => 'static_pages#contact', as: :contact
  get 'politica-de-privacidade' => 'static_pages#privacy_policy', as: :privacy_policy

  resources :posts
end
