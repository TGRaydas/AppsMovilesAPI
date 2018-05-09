class Bill < ApplicationRecord
  belongs_to :user
  belongs_to :desk
  has_many :dish_bills
  has_many :products, through: :dish_bills
end
