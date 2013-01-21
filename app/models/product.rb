class Product < ActiveRecord::Base
  attr_accessible :content, :main_image, :name, :price, :title_image,  :subcatalog_ids, :title, :new, :spec, :yes, :norm



  has_many :orders
  has_and_belongs_to_many :subcatalogs
  accepts_nested_attributes_for :subcatalogs

 def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |product|
      csv << product.attributes.values_at(*column_names)
    end
  end
 end

end
