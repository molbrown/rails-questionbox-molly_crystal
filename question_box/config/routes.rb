Rails.application.routes.draw do
  resources :users
  resources :questions
  resources :answers


  resource :login
    get 'login', to: 'logins#new'
    get 'logout', to: 'logins#destroy', as: 'logout'


  root 'questions#index'
end
