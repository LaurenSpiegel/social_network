Rails.application.routes.draw do
  get '/' => 'users#index'
  get '/users/:id' => 'users#show'
  get '/users/:id/edit' => 'users#edit' 
  patch '/users/:id/update' => 'users#update'  
  post '/post_rant' => 'rants#create'    #based on route for ratings in restaurant app
  post '/post_friend' => 'friends#create'    
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
  
end
