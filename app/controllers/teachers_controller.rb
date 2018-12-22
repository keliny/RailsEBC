class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def create
    teacher = Teacher.new(teacher_params)
    if teacher.save
      redirect_to :adminTeachers
    else
      flash[:errors] = teacher.errors.full_messages
      redirect_to new_teacher_path
    end
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    teacher = Teacher.find(params[:id])
    if teacher.update(teacher_params)
      redirect_to :adminTeachers
    else
      flash[:errors] = teacher.errors.full_messages
      redirect_to edit_teacher_path(teacher.id)
    end
  end

  def destroy
    Teacher.destroy(params[:id])
    redirect_to :adminTeachers
  end


  # parameters
  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name, :email, :password)
  end
end
