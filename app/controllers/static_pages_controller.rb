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
  @products = Product.search(params[:search])
end

end
