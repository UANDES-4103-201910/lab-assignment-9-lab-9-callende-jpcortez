Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users

  root :to => 'application#index'

  get '/log_in' => 'session#new', as: :log_in
  post '/login',   to: 'sessions#create'
  delete '/log_out' => 'session#destroy', as: :log_out

  get '/sign_in' => 'registration#new', as: :sign_in
  delete '/sign_out' => 'session#destroy', as: :sign_out
end
