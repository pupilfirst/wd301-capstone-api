Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :matches, only: [] do
    collection do
      get "/", to: "matches#index"
    end

    member do
      get "/", to: "matches#show"
      get "/score", to: "matches#score"
    end
  end
end
