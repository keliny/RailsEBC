class CoursesController < ApplicationController
  before_action :require_login, only: [:new, :create, :edit, :update, :destroy]
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end
  def create
    course = Course.new(course_params)
    if course.save
      redirect_to :adminCourses
    else
      flash[:errors] = course.errors.full_messages
      redirect_to new_course_path
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    course = Course.find(params[:id])
    if course.update(course_params)
      redirect_to :adminCourses
    else
      flash[:errors] = course.errors.full_messages
      redirect_to edit_course_path(building.id)
    end
  end

  def destroy
    Course.destroy(params[:id])
    redirect_to :adminCourses
  end


  # parameters
  def course_params
    params.require(:course).permit(:code, :title, :language_type, :study_type)
  end
end
