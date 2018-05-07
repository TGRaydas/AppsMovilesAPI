class Bill < ApplicationRecord
  belongs_to :user
  belongs_to :desk
  has_many :products, through: :dish_bills
end
