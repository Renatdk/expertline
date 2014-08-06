require 'unicode'

class StaticPagesController < ApplicationController
  
  def price_list
   @products=Product.all

  end

def new_products
	@products=Product.where(:new=>true)
end

def spec_products
	@products=Product.where(:spec=>true)
end

def search
  @products2 = Product.search(Unicode.capitalize(params[:search]))
  @products1 = Product.search(Unicode.downcase(params[:search]))
  @products=@products2+@products1
end

end
