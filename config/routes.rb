Rails.application.routes.draw do

  
  get 'users/new'


   root 'pages#home'

   get '/contact' => 'pages#contact'

   get '/about' => 'pages#about'

   resources :meals
   
   resources :movies

   resources :cars

   get '/login' => 'sessions#new'
   post '/login' => 'sessions#create'
   delete '/logout' => 'sessions#destroy'

   get '/signup' => 'users#new'
   post '/signup' => 'users#create'

end
