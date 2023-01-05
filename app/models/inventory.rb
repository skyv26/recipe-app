class Inventory < ApplicationRecord
  has_one :inventory_foods, dependent: :destroy
  belongs_to :user
end
