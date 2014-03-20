Everest::Application.routes.draw do
  get "faqs/index", :as => "faq"
  resources :users

  resources :detail_transactions

  resources :coredealers

  root to: "users#index"
end
