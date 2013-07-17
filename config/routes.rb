Footballmapper::Application.routes.draw do
  get "advertisers/new"

  devise_for :advertisers

  get "leagues/new"

  get "league/new"

  get "search" => "schools#search"

  resources :schools

  resources :leagues

  root :to => "schools#index"


end
