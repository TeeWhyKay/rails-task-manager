Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # see all tasks
  get '/tasks', to: 'tasks#index'
  # create new task
  get '/tasks/new', to: 'tasks#new', as: :new_task
  # see one task
  get '/tasks/:id', to: 'tasks#show', as: :task

  post 'tasks', to: 'tasks#create', as: :create_task

  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update', as: :update_task

  delete 'tasks/:id', to: 'task#destroy', as: :destroy_task
end
