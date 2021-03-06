Rails.application.routes.draw do
  devise_for :users
  root to: 'toilets#index'
  get '/dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :toilets do
    resources :bookings, only: %i[new create]
    resources :reviews, only: %i[new create show index]
  end
  resources :bookings, only: %i[show destroy index edit update]
end
