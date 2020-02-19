Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/restaurants', to: 'restaurants#index'
  # get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
  # post '/restaurants', to: 'restaurants#create'
  resources :restaurants do
    resources :reviews, only: [ :new, :create, :index, :destroy ]
  end
  resources :reviews do
    resources :reviews, only: [ :show, :index, :create, :destroy ]
  end

end
