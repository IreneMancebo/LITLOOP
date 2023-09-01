Rails.application.routes.draw do
  devise_for :users
  root to: "nooks#index"

  get '/pages/dashboard', to: 'pages#dashboard'
  get '/pages/feed', to: 'pages#feed'


  resources :nooks, only: %i[index show new create edit update destroy] do
    resources :footnotes, only: %i[new create]
  end
  resources :footnotes, only: :destroy
  resources :favorites, only: %i[new create destroy]

end
