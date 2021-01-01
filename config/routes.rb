Rails.application.routes.draw do

  resources :songs, only: [:index, :show]
  resources :artists, only: [:index, :show, :new, :create, :destroy]
end