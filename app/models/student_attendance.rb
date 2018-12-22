class StudentAttendance < ApplicationRecord
  # 1:n - lesson x studentAttendance, student x studentAttendance
  belongs_to :lesson
  belongs_to :student

  # validations
  validates :lesson_id, :student_id, presence: true
end
