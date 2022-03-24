Rails.application.routes.draw do
  resources :slogans
  resources :riders
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"
  get '/gallery', to: 'pages#gallery'
  get '/map', to: 'pages#map'

  


  # resources :pages

end
