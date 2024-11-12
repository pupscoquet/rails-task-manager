Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index",

  # read all tasks
  get "tasks", to: "tasks#index", as: :tasks

  # read one task
  get "/tasks/:id", to: "tasks#show", as: :task

  # new task
  get "new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create", as: :create_task

  # update task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update', as: :update_task

  # delete task
  delete 'tasks/:id', to: 'tasks#delete'

end
