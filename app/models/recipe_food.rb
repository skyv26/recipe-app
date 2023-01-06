class RecipeFood < ApplicationRecord
  belongs_to :food
  belongs_to :recipe

  validates :quantity, presence: true, length: { in: 1..32_000 }
end
