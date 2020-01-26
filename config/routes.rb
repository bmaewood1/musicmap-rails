Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  namespace :api do
    namespace :v1 do
      resources :events
    end
  end
  namespace :api do
    namespace :v1 do
      resources :songs
    end
  end
  namespace :api do
    namespace :v1 do
      resources :playlists
    end
  end
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end

  namespace :api do
    namespace :v1 do
      get '/user', to: "users#create"
      patch '/user', to: "users#update"
      get 'myplaylists', to: "playlists#my_playlists"
      delete 'songs/:id', to: 'songs#destroy'
      delete 'playlists/:id', to: 'playlists#destroy'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
