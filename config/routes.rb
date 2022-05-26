Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#index'
  get '/dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :toilets do
    resources :bookings, only: %i[new create]
    resources :reviews, only: %i[show new create index]
  end
  resources :bookings, only: %i[show destroy index ]
end
