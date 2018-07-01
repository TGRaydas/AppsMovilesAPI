class Product < ApplicationRecord
  before_create :add_img_url
  belongs_to :local
  has_many :dish_bills
  has_many :bills, through: :dish_bills
  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  def add_img_url
    self.img_url = ""
  end
end
