class StudentAssignment < ApplicationRecord
  # 1:n student_assignment x course, student_assignment x student
  belongs_to :course
  belongs_to :student

  # validations
  validates :course_id, :student_id, presence: true
end
