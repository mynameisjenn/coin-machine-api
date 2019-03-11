Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  # get '/total' => 'api/coins#total'

  namespace :api do
  	resources :coins  
  	resources :transactions
  	post "/users" => "users#create"
  	post "/sessions" => "sessions#create"
  end
end
