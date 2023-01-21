Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/faq'
  get 'welcome/contacts'
  get 'welcome/formanager'
  
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
    
    end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #match 'users/:id' => 'users#show', via: :get
  #match '/users' => 'users#index', via: :get

  resources :courses
  resources :users
  resources :ownedcourses
  resources :contents



  # Defines the root path route ("/")
  root "welcome#index"
end
