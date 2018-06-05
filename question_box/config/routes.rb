Rails.application.routes.draw do
  resources :users
  resources :questions

  root 'questions#index'
end
