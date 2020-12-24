Rails.application.routes.draw do
  devise_for :users
  get 'purchases/index'
  get '/users', to: 'tops#index'
  root to: "tops#index"
  resources :tops do 
      resources :purchases ,only: [:index , :create]
  end
end
