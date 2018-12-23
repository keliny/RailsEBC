class Teacher < ApplicationRecord
  has_secure_password
  # 1:n - teacher x lesson, teacher x teacher_assignment
  has_many :lessons #, as: :lessonable
  has_many :teacher_assignments, dependent: :destroy
  # m:n - teacher x course
  has_many :courses, through: :teacher_assignments

  # validations
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :first_name, :last_name, :email, :password, presence: true
  validates :email, format: {with: VALID_EMAIL_REGEX}, uniqueness: {:case_sensitive => false}
end
