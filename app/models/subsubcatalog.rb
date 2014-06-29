class Subsubcatalog < ActiveRecord::Base
  attr_accessible :name, :subcatalog_id

  belongs_to :subcatalog
  has_and_belongs_to_many :products
 
  accepts_nested_attributes_for :products


end
