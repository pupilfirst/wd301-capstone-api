Rails.application.routes.draw do
  mount Rswag::Api::Engine => '/api-docs'
  mount Rswag::Ui::Engine => '/'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users, only: [:create] do
    collection do
     post "/sign_in", to: "users#sign_in"
    end
  end

  resources :user do
    collection do
      get "/", to: "users#me"
      get "/preferences", to: "users#preferences"
      patch "/preferences", to: "users#update_preferences"
      patch "/password", to: "users#update_password"
    end
  end
  resources :articles, only: [:index, :show]

  resources :matches, only: [] do
    collection do
      get "/", to: "matches#index"
    end

    member do
      get "/", to: "matches#show"
    end
  end

  resources :teams, only: %i[index show]

  resources :sports, only: %i[index show]
end
