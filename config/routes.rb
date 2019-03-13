Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  namespace :api do
  	resources :coins 
  	resources :transactions 

  	get "/system_coin_total" => "coins#system_coin_total"
  	post "/users" => "users#create"
  	post "/sessions" => "sessions#create"
  end
end
