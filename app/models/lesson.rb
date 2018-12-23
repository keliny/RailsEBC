class Lesson < ApplicationRecord
  # 1:n - lesson x teacher, lesson x room, lesson x course
  # belongs_to :lessonable, :polymorphic => true
  belongs_to :course
  belongs_to :teacher
  belongs_to :room
  # m:n - student x lesson
  has_many :students, through: :student_attendances

  # validations
  validates :start_at, :end_at, :duration, :room_id, :teacher_id, :course_id, presence: true
  validates :duration, presence: true, numericality: {greater_than: 0}
end
