# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  root 'static_pages#home'

  get 'inicio' => 'static_pages#home', as: :home
  get 'contato' => 'static_pages#contact', as: :contact
  get 'noticias' => 'posts#index', as: :posts
  get 'noticias/:slug' => 'posts#show', as: :post
  get 'decisoes' => 'judgements#index', as: :judgements
  get 'politica-de-privacidade' => 'static_pages#privacy_policy', as: :privacy_policy
  get 'sobre' => 'static_pages#about', as: :about

  scope path: 'cartilhas-e-manuais' do
    get 'consumidor' => 'static_pages#consumer_content', as: :consumer_content
    get 'construtoras' => 'static_pages#construction_content', as: :construction_content
    get 'previdenciario' => 'static_pages#social_security_content', as: :social_security_content
    get 'sfh-sfi' => 'static_pages#sfh_sfi_content', as: :sfh_sfi_content
  end

  namespace 'admin' do
    root to: 'posts#index'

    resources :judgements, path: :decisoes
    resources :posts, path: :noticias
  end
end
