Rails.application.routes.draw do
  get '/login' => 'session#new'
 
  post '/login' => 'session#create'
 
  get '/logout' => 'session#destroy'

  resources :projects
  resources :project_types
  resources :educations, only: [:new, :index, :edit]
  resources :work_exps, only: [:show, :new, :edit]

  get 'home/index'

  get 'home/about_me'

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
