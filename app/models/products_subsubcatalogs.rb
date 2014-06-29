class ProductsSubsubcatalogs < ActiveRecord::Base
  attr_accessible :product_id, :subsubcatalog_id

 belongs_to :product
 belongs_to :subsubcatalog
end
