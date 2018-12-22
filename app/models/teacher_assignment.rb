class TeacherAssignment < ApplicationRecord
  # 1:n - teacher x teacherAssignment, course x teacherAssignment
  belongs_to :teacher
  belongs_to :course

  # validations
  validates :course_id, :teacher_id, presence: true
end
