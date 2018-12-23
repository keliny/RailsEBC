class Course < ApplicationRecord
  # m:n - course x teacher, course x student
  has_many :teacher_assignments, dependent: :destroy
  has_many :student_assignments, dependent: :destroy
  has_many :teacher, through: :teacher_assignments
  has_many :students, through: :student_assignments
  # 1:n - course x lesson
  has_many :lessons, dependent: :destroy #, as: :lessonable

  enum studytype: [:FULL_TIME, :PART_TIME]
  enum language: [:CZECH, :ENGLISH]

  extend Enumerize

  enumerize :study_type, in: [:FULL_TIME, :PART_TIME]
  enumerize :language_type, in: [:CZECH, :ENGLISH]

  # validations
  validates :title, :code, :language_type, :study_type, presence: true
  validates :code, :title, uniqueness: {:case_sensitive => false}
end
