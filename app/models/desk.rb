class Desk < ApplicationRecord
  belongs_to :local
  has_many :bills
end
