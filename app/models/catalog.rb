class Catalog < ActiveRecord::Base
  attr_accessible :name, :sortnum

  has_many :subcatalog
end
