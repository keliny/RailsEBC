class AdministrationController < ApplicationController
  before_action :require_login
  def index

  end

  # building CRUD
  def buildings # show buildings
    @buildings_data = Building.all
  end


  # Course CRUD
  def courses
    @courses = Course.all
  end
  # Lesson CRUD
  def lessons
    @lessons = Lesson.all
  end

  #Teachers CRUD
  def teachers
    @teachers = Teacher.all
  end

  # Students CRUD
  def students
    @students = Student.all
  end

  # Rooms CRUD
  def rooms
    @rooms = Room.all
  end

  def studentAssignments
    @studentAssignments = StudentAssignment.all
  end

  def teacherAssignments
    @teacherAssignments = TeacherAssignment.all
  end



end
