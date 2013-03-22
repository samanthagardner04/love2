Love2::Application.routes.draw do

 root :to => 'categories#index'

  resources :categories
  resources :items
  resources :users

  get "/login" => 'sessions#new', as: :login

  post "sessions/create" => 'sessions#create', as: :create_session

  get "/logout" => 'sessions#destroy', as: :logout

# <<<<<<< HEAD
#   get "/things" => "things#show", as: :things
# =======
 
# >>>>>>> upstream/master

 get "/about" => 'info#about', as: :about


end
