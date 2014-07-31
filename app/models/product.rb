class Product < ActiveRecord::Base
  attr_accessible :content, :main_image, :name, :price, :title_image, :subsubcatalog_ids,  :subcatalog_ids, :title, :new, :spec, :yes, :norm
  default_scope order('name ASC')

  has_many :orders
  
  has_and_belongs_to_many :subcatalogs
  has_and_belongs_to_many :subsubcatalogs
  
  accepts_nested_attributes_for :subcatalogs
  accepts_nested_attributes_for :subsubcatalogs

 def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |product|
      csv << product.attributes.values_at(*column_names)
    end
  end
 end

def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end

end
