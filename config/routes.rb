Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pears#random"

  resources :pears do
    collection do
      get :random
    end
  end
end
