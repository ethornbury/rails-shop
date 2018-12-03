Rails.application.routes.draw do
  get 'cart/index'

  #get 'site/about'
  #get 'site/contact'
  #get 'site/home'
  
 
  
  get '/about' => 'site#about'
  get '/contact' => 'site#contact' 
  #get '/' => 'site#home' 
  root to: 'site#home'
  resources :items
  post '/search' => 'items#search'
  
  delete '/cart/remove/:id' => 'cart#remove'
  get '/cart', to: 'cart#index'
  get '/cart/clear', to: 'cart#clearCart'
  get '/cart/:id', to: 'cart#add'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
