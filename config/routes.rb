Rails.application.routes.draw do

  get 'votes/create' => 'votes#create' #  will not need to load a page

  get 'pages/index'
  get 'pages/show'
  get 'pages/profile'
  
  root to: "compares#index"
  
  resources :compares
  
  devise_for :users,  :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #tell Devise in which controller we will implement Omniauth callbacks:

  


  

end
