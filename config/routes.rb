Rails.application.routes.draw do
  namespace :v1 do
    get 'recipes/index'
    post 'recipes/create'    
    get 'recipes/edit'
    get '/show/:id', to: 'recipes#show'
    post '/show/:id', to: 'recipes#edit'
    delete '/destroy/:id', to: 'recipes#destroy'
  end
  root 'homepage#index'
  get '/*path' => 'homepage#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
