class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  # A bookmark must be linked to a movie and a list,
  # and the [movie, list] pairings should be unique. (validation)
  validates :movie_id, presence: true, uniqueness: { scope: :list_id, message: 'one or more association found!' }
  # The comment of a bookmark cannot be shorter than 6 characters (validation)
  validates :comment, presence: true, length: { minimum: 6 }
end
