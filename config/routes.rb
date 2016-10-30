Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'cities#index'

  # without only: :index option for cities resource, it will create all 7 routes for cities instead of just index
  # if you want to do "only" option for more than one route, do e.g. only: [:index, :show]
  resources :cities, only: :index do 
    resources :parks do
      resources :reviews, except: [:index]
    end
  end
end
