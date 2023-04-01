Rails.application.routes.draw do
  devise_for :admin_users, controllers:{
    sessions: 'admin_users/sessions',
    registrations: 'admin_users/registrations',
    passwords: 'admin_users/passwords'
  }
  root 'welcome#index'
  get 'welcome/about'
  get '/about' => 'welcome#about'




  resources :projects
  # resources :courses
  # resources :students

  namespace :admin do
    resources :students
    resources :courses
    get 'dashboard' => 'dashboard#index'
  end





end
