TbdsupportApp::Application.routes.draw do
  get "pages/home"

  devise_for :technicians
  devise_for :users 
  
  resources :events
  resources :user

  root :to => 'pages#home'
end
