class Student < ApplicationRecord
  has_secure_password

  # 1:n student_assignment x student
  has_many :student_assignments , dependent: :destroy
  # m:n student x course, student x lesson
  has_many :courses, through: :student_assignments
  has_many :lessons, through: :student_attendances

  enum studytype: [:FULL_TIME, :PART_TIME]

  extend Enumerize

  enumerize :study_type, in: [:FULL_TIME, :PART_TIME]

  # validations
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :first_name, :last_name, :email, :study_type, :password, presence: true
  validates :email, format: {with: VALID_EMAIL_REGEX}, uniqueness: {:case_sensitive => false}
end
