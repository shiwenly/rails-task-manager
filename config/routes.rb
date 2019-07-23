Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#index"

  # create
  get "tasks/new", to: "tasks#new", as: :new
  post "tasks", to: "tasks#create"

  # read
  get "tasks/:id", to: "tasks#show", as: :task

  # update
  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "tasks/:id", to: "tasks#update"

  # destroy
  delete "task/:id", to: "tasks#destroy", as: :delete

  root to: 'tasks#index'
end
