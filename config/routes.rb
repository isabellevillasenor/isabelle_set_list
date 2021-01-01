Rails.application.routes.draw do

  resources :songs, only: [:index, :show]
  resources :artists
end