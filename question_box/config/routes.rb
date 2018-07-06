Rails.application.routes.draw do
  resources :users
  resources :questions
  resources :answers
  resources :logins, only: [:new, :create, :destroy]
    get 'login', to: 'logins#new'
    get 'logout', to: 'logins#destroy', as: 'logout'
  root 'questions#index'

  scope :api do
    scope :v1 do
      resources :users, format: "json"
      resources :questions, format: "json"
      resources :answers, format: "json"
      resource :sessions, only: :create
    end
  end



end
