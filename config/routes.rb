Rails.application.routes.draw do
  root "main#index"
  get "about", to: "about#index"

  #Password edit
  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"
  
  #Crear usuario
  get "signup", to: "registrations#new"
  post "signup", to: "registrations#create"

  #Logged in and Logout
  get "signin", to: "sessions#new"
  post "signin", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  
  #Password reset
  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"
  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"
  
  get "auth/twitter/callback", to: "omniauth_callbacks#twitter"
  


end
