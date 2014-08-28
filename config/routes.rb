Rails.application.routes.draw do
  root to: 'visitors#index'

  namespace :bars do
    resources :autocompletes, only: :index
  end
  resources :bars
end
