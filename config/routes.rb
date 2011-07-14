TbdsupportApp::Application.routes.draw do

  devise_for :technicians
  devise_for :users 
  
  resources :events
  resources :users
  
  match '/about' => 'pages#about'
  match '/location' => 'pages#location'
  match '/service' => 'pages#service'
  match '/contact' => 'pages#contact'
  match '/user' => "users#show", :as => :user_root

  root :to => 'pages#home'
end
