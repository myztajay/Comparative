Rails.application.routes.draw do

  get 'pages/index'
  get 'pages/show'
  get 'pages/profile'
  root to: "pages#index"
  
  resources :compares
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
