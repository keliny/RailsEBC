class TeacherAssignmentsController < ApplicationController
  before_action :require_login, only: [:new, :create, :edit, :update, :destroy]
end
