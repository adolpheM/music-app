Rails.application.routes.draw do
  
    get "/songs", to: 'songs#index'
    post "/songs", to: 'songs#create'
    get "/songs,:id", to: 'songs#show'
    patch "/songs", to: 'songs#update'
    delete "/songs/:id", to: 'songs#destroy'

  namespace :api do 

    namespace :v1 do
      get "/songs", to: 'songs#index'
      post "/songs", to: 'songs#create'
      get "/songs,:id", to: 'songs#show'
      patch "/songs", to: 'songs#update'
      delete "/songs/:id", to: 'songs#destroy'
    end 
  end 
end
