Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#top"
  get 'home/about', to: 'home#about'

  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:show, :edit, :update, :index]

end
