Rails.application.routes.draw do
  devise_for :users
  root to: "spots#index"

  resources :spots do
    resources :footnotes, only: %i[new create]
  end
  resources :footnotes, only: :destroy
  resources :favorites, only: %i[new create destroy]
end
