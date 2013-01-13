# coding: utf-8
class OrderMailer < ActionMailer::Base
  default :from => "eXpert-line <info@expertline.kz>"

  def welcome_email(order)
    @order = order
    @url  = "http://www.expertline.kz/senders/"+@order.sicret
  		    
    mail(:to => order.email, :cc => "renatd.k@gmail.com", :subject => "Заказ № "+@order.id.to_s+' '+@order.basket.id.to_s)
  end

end
