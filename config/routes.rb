Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/recipes', to: 'recipes#index'
      post '/recipes', to: 'recipes#create'
      get '/recipes/:id', to: 'recipes#show'
      patch '/recipes/:id', to: 'recipes#update'
      delete '/recipes/:id', to: 'recipes#destroy'

      get '/cookbooks', to: 'cookbooks#index'
      post '/cookbooks', to: 'cookbooks#create'
      get '/cookbooks/:id', to: 'cookbooks#show'
      patch '/cookbooks/:id', to: 'cookbooks#update'
      delete '/cookbooks/:id', to: 'cookbooks#destroy'

      get '/ingredients', to: 'ingredients#index'
      post '/ingredients', to: 'ingredients#create'
      get '/ingredients/:id', to: 'ingredients#show'
      patch '/ingredients/:id', to: 'ingredients#update'
      delete '/ingredients/:id', to: 'ingredients#destroy'
    end
  end
end
