class Subcatalog < ActiveRecord::Base
  attr_accessible :name, :catalog_id, :position

  default_scope order('position ASC')

  belongs_to :catalog
  has_and_belongs_to_many :products
 
  accepts_nested_attributes_for :products
  
  has_many :subsubcatalogs



end
