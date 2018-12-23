class Room < ApplicationRecord
  # 1:n building x room, room x lesson
  belongs_to :building
  has_many :lessons #, as: :lessonable

  # validations
  validates :title, :code, :building_id, :capacity, presence: true
  validates :capacity, numericality: {greater_than: 0}
  validates :code, :title, uniqueness: {:case_sensitive => false}
end
