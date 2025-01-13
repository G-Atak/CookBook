class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :category
  validates :comment, length: { minimum: 6, too_short: "Must have at least 6 characters" }
  validates :recipe_id, uniqueness: { scope: :category_id, message: "This recipe is already bookmarked in this category" }
end
