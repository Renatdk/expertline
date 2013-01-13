class Basket < ActiveRecord::Base
  attr_accessible :name

  has_many :orders
  has_many :senders
  
end
