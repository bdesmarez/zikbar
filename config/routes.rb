Rails.application.routes.draw do
  root to: 'visitors#index'

  resources :bars
end
