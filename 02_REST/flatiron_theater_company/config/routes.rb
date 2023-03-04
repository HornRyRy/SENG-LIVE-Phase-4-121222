Rails.application.routes.draw do
  
  #exercise - buiid a custom GET route that goes to /welcome
  # should point to application controller, and a method called welcome
  get "/welcome", to: "application#welcome"
  
  #build a dynamic route /greeting/<dynamic_name>
  get "/greeting/:name", to: "application#name"
  
  resources :productions, only: [:index, :show]
  
  namespace :admin do
    resources :productions, only: [:create, :update, :destroy]
  end

end
