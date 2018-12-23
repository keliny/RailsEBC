class StudentAttendancesController < ApplicationController
  before_action :require_login, only: [:new, :create, :edit, :update, :destroy]
end
