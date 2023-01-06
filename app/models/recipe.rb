class Recipe < ApplicationRecord
  has_one :recipe_foods, dependent: :destroy
  belongs_to :user

  validates :name, presence: true
  validates :description, length: { in: 10..250 }, presence: true
end
