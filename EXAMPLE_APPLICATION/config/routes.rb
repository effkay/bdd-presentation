BddApp::Application.routes.draw do
  resources :contacts
  root :to => "contacts#new"
end
