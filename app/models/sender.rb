class Sender < ActiveRecord::Base
  attr_accessible :address, :basket_id, :buy, :commet, :email, :product_id, :sicret, :tel, :company, :name, :docs

  validates :email,:name, :tel,:address => true


  belongs_to :basket
end
