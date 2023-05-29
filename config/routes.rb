Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users, only: [:create] do
    collection do
      get "/me", to: "users#me"
      get "/me/preferences", to: "users#get_preferences"
      patch "/me/preferences", to: "users#update_preferences"
      patch "/me/update_password", to: "users#update_password"
      post "/sign_in", to: "users#sign_in"
    end
  end
  resources :articles, only: [:index, :show]
end
