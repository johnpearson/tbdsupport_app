TbdsupportApp::Application.routes.draw do
  get "pages/home"

  devise_for :technicians
  devise_for :users 
  
  resources :events
  resources :user
  
  match '/about' => 'pages#about'
  match '/location' => 'pages#location'
  match '/service' => 'pages#service'
  match '/contact' => 'pages#contact'

  root :to => 'pages#home'
end
