Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "tasks", to: "tasks#index", as: :tasks_all

  get "tasks/new", to: "tasks#new", as: :tasks_new
  post "tasks/new", to: "tasks#create", as: :tasks_create

  get "tasks/:id/edit", to: "tasks#edit", as: :tasks_edit
  patch "tasks/:id/edit", to: "tasks#update", as: :tasks_update

  get "tasks/:id", to: "tasks#show", as: :tasks_show

  delete "tasks/:id", to: "tasks#destroy", as: :tasks_destroy
  # Defines the root path route ("/")
  # root "posts#index"
end
