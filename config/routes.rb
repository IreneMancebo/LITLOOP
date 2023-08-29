Rails.application.routes.draw do
  devise_for :users
  root to: "spots#index"

  get '/pages/dashboard', to: 'pages#dashboard'
  get '/pages/feed', to: 'pages#feed'

  resources :spots do
    resources :footnotes, only: %i[new create]
  end
  resources :footnotes, only: :destroy
  resources :favorites, only: %i[new create destroy]

end
