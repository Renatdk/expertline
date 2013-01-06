class Product < ActiveRecord::Base
  attr_accessible :content, :main_image, :name, :price, :title_image

  has_many :orders
end
