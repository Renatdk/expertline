class ProductsSubcatalogs < ActiveRecord::Base
  attr_accessible :product_id, :subcatalog_id

 belongs_to :product
 belongs_to :subcatalog

end
