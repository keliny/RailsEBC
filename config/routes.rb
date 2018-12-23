Rails.application.routes.draw do
  # root_path of app
  root "buildings#index"

  # admin - building
  get "adminBuildings" => "administration#buildings"
  #admin - courses
  get "adminCourses" => "administration#courses"
  # admin - lessons
  get "adminLessons" => "administration#lessons"
  # admin - teachers
  get "adminTeachers" => "administration#teachers"
  # admin - students
  get "adminStudents" => "administration#students"
  # admin - rooms
  get "adminRooms" => "administration#rooms"
  # administration
  get "administration" => "administration#index"
  # login page
  # get "teacherLogin" => "teacher#login"
  get "login" => "logins#login"
  # resources :logins, only: [:login]
  get "logout" => "sessions#destroy"
  resources :sessions

  resources :administration
  resources :buildings
  resources :courses
  resources :teachers
  resources :lessons
  resources :rooms
  resources :students
end
