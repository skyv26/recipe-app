class User < ApplicationRecord
  has_many :recipes, dependent: :destroy
  has_many :inventories, dependent: :destroy

  validates :name, presence: true
end
