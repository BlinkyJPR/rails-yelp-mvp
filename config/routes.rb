Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'reviews/update'
  get 'reviews/edit'
  get 'reviews/destroy'
  get 'reviews/index'
  get 'reviews/show'
  get 'restaurants/new'
  get 'restaurants/create'
  get 'restaurants/update'
  get 'restaurants/edit'
  get 'restaurants/destroy'
  get 'restaurants/index'
  get 'restaurants/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :restaurants, only: %i[index show new create] do
    resources :reviews, only: %i[new create]
  end
end
