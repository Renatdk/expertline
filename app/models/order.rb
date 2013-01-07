class Order < ActiveRecord::Base
  attr_accessible :basket_id, :product_id, :count

  belongs_to :basket
  belongs_to :product

  default_scope order('id ASC')
end
