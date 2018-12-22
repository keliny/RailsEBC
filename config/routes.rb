Rails.application.routes.draw do
  # root_path of app
  root "buildings#index"

  # admin
  get "adminBuildings" => "administration#buildings"
  get "adminCourses" => "administration#courses"
  get "adminLessons" => "administration#lessons"
  get "adminTeachers" => "administration#teachers"
  get "adminStudents" => "administration#students"
  get "adminRooms" => "administration#rooms"
  get "administration" => "administration#index"

  resources :administration
  resources :buildings
  resources :courses
  resources :teachers
  resources :lessons
  resources :rooms
  resources :students
end
