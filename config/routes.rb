Everest::Application.routes.draw do

  get "faqs/index", :as => "faq"
  resources :users

  resources :detail_transactions

  resources :coredealers
  
  get ":id" => "download#show"
  get "download/:id" => "download#show", :as => "download"

  root to: "users#index"
end
