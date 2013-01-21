class BasketsController < ApplicationController
  # GET /baskets
  # GET /baskets.json
  def index
    @baskets = Basket.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @baskets }
    end
  end

  # GET /baskets/1
  # GET /baskets/1.json
  def show
    if cookies[:uid] == nil
      cookies[:uid] = {
      :value => SecureRandom.hex(10),
      :expires => 20.years.from_now.utc
      }
    end

    @basket = Basket.where(:name=>cookies[:uid]).first_or_create

    cookies[:basket_count] = {
      :value => @basket.orders.count.to_s,
      :expires => 20.years.from_now.utc
     }
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @basket }
    end
  end

  # GET /baskets/new
  # GET /baskets/new.json
  def new
    @basket = Basket.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @basket }
    end
  end

  # GET /baskets/1/edit
  def edit
    @basket = Basket.find(params[:id])
  end

  # POST /baskets
  # POST /baskets.json
  def create
    @basket = Basket.new(params[:basket])

    respond_to do |format|
      if @basket.save
        format.html { redirect_to @basket, notice: 'Basket was successfully created.' }
        format.json { render json: @basket, status: :created, location: @basket }
      else
        format.html { render action: "new" }
        format.json { render json: @basket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /baskets/1
  # PUT /baskets/1.json
  def update
    @basket = Basket.find(params[:id])

    respond_to do |format|
      if @basket.update_attributes(params[:basket])
        format.html { redirect_to @basket, notice: 'Basket was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @basket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baskets/1
  # DELETE /baskets/1.json
  def destroy
    @basket = Basket.find(params[:id])
    @basket.destroy

    respond_to do |format|
      format.html { redirect_to baskets_url }
      format.json { head :no_content }
    end
  end
end
