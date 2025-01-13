class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :category

  validates :recipe_id, uniqueness: { scope: :category_id, message: "already bookmarked in this category" }
  validates :comment, length: { minimum: 6 }
end
