Rails.application.routes.draw do

  resource :session, only: [:new, :create, :destroy]

  resources :stories do
    resources :comments
  end

  root 'stories#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
