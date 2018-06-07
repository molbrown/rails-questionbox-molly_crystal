Rails.application.routes.draw do
  resources :users
  resources :questions
  resources :answers
  resource :login
    get 'login', to: 'logins#new'
    get 'logout', to: 'logins#destroy', as: 'logout'
  root 'questions#index'

  namespace :api do
    namespace :v1 do
      resources :users, format: "json"
      resources :questions, format: "json"
      resources :answers, format: "json"
      resource :sessions, only: :create
    end
  end



end
