Rails.application.routes.draw do
  resources :projects
  resources :project_types
  resources :educations
  resources :work_exps

  resources :photos, only: [:new, :create, :index, :destroy]

  get 'home/index'

  get 'home/about_me'

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
