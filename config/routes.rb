Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :posts, :index    # tag ini sama kayak -> get '/posts/' => 'posts#index'
 resources :posts, :new    # tag ini sama kayak -> get '/posts/:id' => 'posts#show' 
 resources :posts, :show
 resources :posts, :create
 # resources :posts, :post
end
