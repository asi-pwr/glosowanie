Rails.application.routes.draw do
  get '/vote', to: "voting#show"
  post '/vote', to: "voting#vote"
  get '/thanks', to: "voting#thanks"

  resources :votes
  resources :lecturers
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'voting#show'
end
