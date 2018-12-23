class StudentAssignmentsController < ApplicationController
  before_action :require_login, only: [:new, :create, :edit, :update, :destroy]

  def index
    @studentAssignments = StudentAssignment.all.includes( :student, :course)
  end

  def new
    @studentAssignment = StudentAssignment.new
  end
  def create
    studentAssignment = StudentAssignment.new(studentAssignment_params)
    if studentAssignment.save
      redirect_to adminStudentAssignments_path
    else
      flash[:errors] = studentAssignment.errors.full_messages
      redirect_to new_student_assignment_path
    end
  end

  def edit
    @studentAssignment = StudentAssignment.find(params[:id])
  end

  def update
    studentAssignment = StudentAssignment.find(params[:id])
    if studentAssignment.update(studentAssignment_params)
      redirect_to adminStudentAssignments_path
    else
      flash[:errors] = studentAssignment.errors.full_messages
      redirect_to edit_student_assignment_path(studentAssignment.id)
    end
  end

  def destroy
    StudentAssignment.destroy(params[:id])
    redirect_to adminStudentAssignments_path
  end

  # parameters
  def studentAssignment_params
    params.require(:student_assignment).permit(:student_id, :course_id)
  end
end
