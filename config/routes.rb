Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/recipes', to: 'recipes#index'
      post '/recipes', to: 'recipes#create'
      get '/recipes/:id', to: 'recipes#show'
      patch '/recipes/:id', to: 'recipes#update'
      delete '/recipes/:id', to: 'recipes#destroy'
    end
  end
end
