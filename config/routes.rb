Footballmapper::Application.routes.draw do
  get "leagues/new"

  get "league/new"

  resources :schools

  resources :leagues

  root :to => "schools#index"


end
