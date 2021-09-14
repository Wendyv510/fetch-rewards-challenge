Rails.application.routes.draw do
  
  root 'sessions#welcome' 

  get '/signup' => 'users#new' 
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :users
  resources :transactions
 
  resources :users, only: [:index, :show] do 
    resources :transactions, only: [:new, :create, :show, :index] 

  
  get '/all_payers_points' => 'transactions#index' 
  get '/add_transaction' => 'transactions#create' 
  get '/spend_points' => 'transactions#index' 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
