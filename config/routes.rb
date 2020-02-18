Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :tasks

  # Read all tasks
  get 'tasks', to: 'tasks#index'

  # Part 1/2 Create a task
  get 'tasks/new', to: 'tasks#new', as: 'new_task'

  # Read one task
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # Part 2/2 Create a task
  post 'tasks/', to: 'tasks#create'

  # Part 1/2 Update/edit a task
  patch 'tasks/:id', to: 'tasks#update'

  # Part 2/2 update a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  # Delete a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
