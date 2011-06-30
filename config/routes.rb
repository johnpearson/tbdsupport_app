TbdsupportApp::Application.routes.draw do
  devise_for :technicians
  devise_for :users do
    get '/' => 'devise/sessions#new'
  end
  
  resources :events
  resources :user

end
