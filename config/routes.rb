Everest::Application.routes.draw do
  resources :users
  get "/users/login"  => "users#login"


  resources :detail_transactions

  resources :coredealers

  root to: "users#index"
end
