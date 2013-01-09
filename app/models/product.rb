class Product < ActiveRecord::Base
  attr_accessible :content, :main_image, :name, :price, :title_image

  has_many :orders

 def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |product|
      csv << product.attributes.values_at(*column_names)
    end
  end
 end

end
