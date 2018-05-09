class Product < ApplicationRecord
  belongs_to :local
  has_many :dish_bills
  has_many :bills, through: :dish_bills
end
