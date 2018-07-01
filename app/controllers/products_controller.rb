class ProductsController < ApplicationController
  def index
    @products = Product.all
    @products.each do |p|
      p["img_url"] << p.image.url(:medium)
    end
    render :json => @products
  end
end
