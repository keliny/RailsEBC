class StudentsController < ApplicationController
  before_action :require_login, only: [:new, :create, :edit, :update, :destroy]
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    student = Student.new(student_params)
    if student.save
      redirect_to :adminStudents
    else
      flash[:errors] = student.errors.full_messages
      redirect_to new_student_path
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    student = Student.find(params[:id])
    if student.update(student_params)
      redirect_to :adminStudents
    else
      flash[:errors] = student.errors.full_messages
      redirect_to edit_student_path(student.id)
    end
  end

  def destroy
    Student.destroy(params[:id])
    redirect_to :adminStudents
  end


  # parameters
  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :password, :study_type)
  end
end
