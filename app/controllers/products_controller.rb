class ProductsController < ApplicationController
  def index
    @products = Product.all
    @products.each do |p|
      p["img_url"] << p.image.url(:original)
    end
    render :json => @products
  end
end
