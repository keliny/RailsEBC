class Course < ApplicationRecord
  # m:n - course x teacher, course x student
  has_many :teacher_assignments, dependent: :destroy
  has_many :student_assignments, dependent: :destroy
  has_many :teacher, through: :teacher_assignments
  has_many :students, through: :student_assignments
  # 1:n - course x lesson
  has_many :lessons, as: :lessonable, dependent: :destroy

  enum studyType: [:FULL_TIME, :PART_TIME]
  enum Language: [:CZECH, :ENGLISH]

  # validations
  validates :title, :code, :language, :studyType, presence: true
end
