TbdsupportApp::Application.routes.draw do
  devise_for :technicians

  devise_for :users

  root :to => "welcome#index"
end
