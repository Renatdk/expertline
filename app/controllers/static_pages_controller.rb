class StaticPagesController < ApplicationController
  def price_list
    @products=Product.all
    
  end

end
