Rails.application.routes.draw do
  get 'sessions/new'

 root 'sessions#login'
  get 'login', to: "sessions#login", as: 'login'

  get 'signup', to: "sessions#signup", as: 'signup'

  post 'login', to: "sessions#attempt_login"

  post 'signup', to: "sessions#create"

  get 'home', to: "sessions#home", as: 'home'

  delete 'logout', to: "sessions#logout"
end
