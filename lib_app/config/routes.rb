Rails.application.routes.draw do
  root 'users#index'

  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
end
