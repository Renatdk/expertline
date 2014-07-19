# coding: utf-8
class OrderMailer < ActionMailer::Base
  default :from => "eXpert-line <info@expertline.kz>"

  def welcome_email(order)
    @order = order
    @url  = "http://www.expertline.kz/senders/"+@order.sicret
  		    
    mail(:to => order.email, :cc => "info@expertline.kz", :subject => "Заказ № "+@order.id.to_s+' '+@order.basket.id.to_s)
  end

  def get_present(order)
    @order = order
  		    
    mail(:to => order.email, :cc => "info@expertline.kz", :subject => "Заказ презентации")
  end

end
