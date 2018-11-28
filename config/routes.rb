Rails.application.routes.draw do
  get 'tasks/:task_id/new-user(.:format)', to: 'tasks#new_join_user', as: 'new_join_user'
  post 'tasks/:task_id/new-user(.:format)', to: 'tasks#create_join_user', as: 'create_join_user'

  delete 'tasks/:task_id/users/:id(.:format)', to: 'tasks#delete_join_user', as: 'delete_join_user'

  resources :tasks do
      resources :users, only: [:show]
  end

  resources :projects do
    resources :tasks, shallow: true
  end

  #resources :tasks
  resources :statuses
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users, only: [:show]
  root 'projects#index'
  get '/projects', to: 'projects#index', as: 'user_root'
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
