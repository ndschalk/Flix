Rails.application.routes.draw do
  resources :genres
  resources :favorites
  root "movies#index"
  resources :movies do
    resources :reviews
    resources :favorites
  end

  resources :users
  get 'signup' => 'users#new'

  resource :session

end
