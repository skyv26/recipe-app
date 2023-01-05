class Recipe < ApplicationRecord
  has_one :recipe_foods, dependent: :destroy
  belongs_to :user
end
