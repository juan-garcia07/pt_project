Rails.application.routes.draw do
  resources :patients
  resources :therapists, only: [:index, :show]

  get '/', to: "home#getstarted"
  get 'home/index'

  get '/getstarted', to: "home#getstarted"

  get '/index', to: "therapists#index"

  get '/schedule', to: "home#schedule"

  get '/patients', to: "patients#index"


  devise_for :users
  get "/admin/index", to: "admin#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
