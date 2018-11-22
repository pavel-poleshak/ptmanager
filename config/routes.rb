Rails.application.routes.draw do
  resources :tasks
  resources :statuses
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root 'projects#index'
  get 'projects/index', as: 'user_root'
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
