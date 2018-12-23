class LessonsController < ApplicationController
  before_action :require_login, only: [:new, :create, :edit, :update, :destroy]
  def index
    @lessons = Lesson.all
  end

  def new
    @lesson = Lesson.new
  end

  def create
    lesson = Lesson.new(lesson_params)
    if lesson.save
      redirect_to :adminLessons
    else
      flash[:errors] = lesson.errors.full_messages
      redirect_to new_lesson_path
    end
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    lesson = Lesson.find(params[:id])
    if lesson.update(lesson_params)
      redirect_to :adminLessons
    else
      flash[:errors] = lesson.errors.full_messages
      redirect_to edit_lesson_path(lesson.id)
    end
  end

  def destroy
    Lesson.destroy(params[:id])
    redirect_to :adminLessons
  end

  # parameters
  def lesson_params
    params.require(:lesson).permit(:start_at, :end_at, :duration, :room_id, :teacher_id, :course_id)
  end
end
