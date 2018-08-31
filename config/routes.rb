Rails.application.routes.draw do

  get 'comments/new'
  get 'comments/destroy'
  get 'comments/show'
  get 'comments/edit'
  resource :session, only: [:new, :create, :destroy]

  resources :stories do
    resources :comments
  end

  root 'stories#index'


get 'users/new'
resources :users

end
