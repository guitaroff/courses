class Course < ApplicationRecord
  has_many :videos, dependent: :destroy

  validates :title, uniqueness: true
end
