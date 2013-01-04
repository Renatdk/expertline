class Product < ActiveRecord::Base
  attr_accessible :content, :main_image, :name, :price, :title_image
end
