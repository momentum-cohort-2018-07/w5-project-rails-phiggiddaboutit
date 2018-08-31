Rails.application.routes.draw do

  resource :session, only: [:new, :create, :destroy]

  resources :stories do
    resources :comments
  end

  root 'stories#index'


get 'users/new'
resources :users

end
