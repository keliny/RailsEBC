Rails.application.routes.draw do
  # root_path of app
  root "buildings#index"

  resources :buildings
  resources :courses
  resources :teachers
  resources :lessons
  resources :rooms
  resources :students
end
