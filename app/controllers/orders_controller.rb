# coding: utf-8
class OrdersController < ApplicationController
  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orders }
    end
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order = Order.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order }
    end
  end

  # GET /orders/new
  # GET /orders/new.json
  def new
    if cookies[:uid] == nil
      cookies[:uid] = {
      :value => SecureRandom.hex(10),
      :expires => 20.years.from_now.utc
      }
    end
    
    @basket=Basket.where(:name=>cookies[:uid]).first_or_create

    @order = Order.create(:product_id=>params[:product_id],:basket_id=>@basket.id,:count=>1)

    cookies[:basket_count] = {
      :value => @basket.orders.count.to_s,
      :expires => 20.years.from_now.utc
     }
    
     respond_to do |format|
      format.html { redirect_to @basket, :notice => 'Продукт удачно добавлен в корзину.' }
      format.json { render json: @order }
    end
  end

  # GET /orders/1/edit
  def edit
    @order = Order.find(params[:id])
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(params[:order])

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render json: @order, status: :created, location: @order }
      else
        format.html { render action: "new" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orders/1
  # PUT /orders/1.json
  def update
    @order = Order.find(params[:id])
    @basket=Basket.where(:name=>cookies[:uid]).first
    
    respond_to do |format|
      if @order.update_attributes(params[:order])
        format.html { redirect_to @basket, notice: 'Order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    @basket=Basket.where(:name=>cookies[:uid]).first

    cookies[:basket_count] = {
      :value => @basket.orders.count.to_s,
      :expires => 20.years.from_now.utc
     }
     
    respond_to do |format|
      format.html { redirect_to @basket }
      format.json { head :no_content }
    end
  end
end
