class Subcatalog < ActiveRecord::Base
  attr_accessible :name, :catalog_id

  belongs_to :catalog
  has_many :subsubcatalogs
  has_and_belongs_to_many :products
  accepts_nested_attributes_for :products


end
