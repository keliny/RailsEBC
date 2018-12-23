class Building < ApplicationRecord
  # https://guides.rubyonrails.org/association_basics.html
  # 1:n - building x rooms
  has_many :rooms, dependent: :destroy

  # validations
  # VALID_PHONE_REGEX = /\A\d{3}-\d{3}-\d{3}\z/
  validates :title, :code, :description, presence: true
  validates :code, :title, uniqueness: {:case_sensitive => false}
end
