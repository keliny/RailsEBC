class TeacherAssignmentsController < ApplicationController
  before_action :require_login, only: [:new, :create, :edit, :update, :destroy]

  def index
    @teacherAssignments = TeacherAssignment.all
  end

  def new
    @teacherAssignment = TeacherAssignment.new
  end
  def create
    teacherAssignment = TeacherAssignment.new(teacherAssignment_params)
    if teacherAssignment.save
      redirect_to adminTeacherAssignments_path
    else
      flash[:errors] = teacherAssignment.errors.full_messages
      redirect_to new_teacher_assignment_path
    end
  end

  def edit
    @teacherAssignment = TeacherAssignment.find(params[:id])
  end

  def update
    teacherAssignment = TeacherAssignment.find(params[:id])
    if teacherAssignment.update(teacherAssignment_params)
      redirect_to adminTeacherAssignments_path
    else
      flash[:errors] = teacherAssignment.errors.full_messages
      redirect_to edit_teacher_assignment_path(teacherAssignment.id)
    end
  end

  def destroy
    TeacherAssignment.destroy(params[:id])
    redirect_to adminTeacherAssignments_path
  end

  # parameters
  def teacherAssignment_params
    params.require(:teacher_assignment).permit(:teacher_id, :course_id)
  end
end
