class User < ApplicationRecord
  has_many :recipes, dependent: :destroy
end
