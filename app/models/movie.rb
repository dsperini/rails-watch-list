class Movie < ApplicationRecord
  has_many :list, through: :bookmark
  has_many :bookmark
  # A movie must have a unique title.
  validates :title, presence: true
end
