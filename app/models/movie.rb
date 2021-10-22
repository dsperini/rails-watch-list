class Movie < ApplicationRecord
  has_many :bookmarks
  # A movie must have a unique title (validation).
  validates :title, presence: true
  validates :overview, presence: true
  validates_uniqueness_of :title
  # A movie has many bookmarks (db tables correlation)
  # You can’t delete a movie if it is referenced in at least one bookmark
end
