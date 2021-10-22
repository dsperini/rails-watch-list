class List < ApplicationRecord
  has_many :movie through: :bookmark
  has_many :bookmark
  # A list must have a unique name
  validates :name, presence: true, unique
end
