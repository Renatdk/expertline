class SendersController < ApplicationController
  # GET /senders
  # GET /senders.json
  def index
    @senders = Sender.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @senders }
    end
  end

  # GET /senders/1
  # GET /senders/1.json
  def show


    @sender = Sender.where(:sicret=>params[:id]).first
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sender }
    end
  end

  # GET /senders/new
  # GET /senders/new.json
  def new
     if cookies[:uid] == nil
      cookies[:uid] = {
      :value => SecureRandom.hex(10),
      :expires => 20.years.from_now.utc
      }
    end

    cookies[:basket_count] = {
      :value => @basket.orders.count.to_s,
      :expires => 20.years.from_now.utc
     }

    @sender = Sender.new
    @basket = Basket.where(:name=>cookies[:uid]).first


    respond_to do |format|
      if cookies[:basket_count]==0.to_s
          format.html { redirect_to :controller=>"baskets", :action => "show",:id=>1 }
          format.json { render json: @basket, location: @basket }
      else
        format.html # new.html.erb
        format.json { render json: @sender }
      end
    end
  end

  # GET /senders/1/edit
  def edit
    @sender = Sender.find(params[:id])
  end

  # POST /senders
  # POST /senders.json
  def create
    if cookies[:uid] == nil
      cookies[:uid] = {
      :value => SecureRandom.hex(10),
      :expires => 20.years.from_now.utc
      }
    end

    @sender = Sender.new(params[:sender])
    @basket = Basket.where(:name=>cookies[:uid]).first

    respond_to do |format|
      if @sender.save

        OrderMailer.welcome_email(@sender).deliver

        cookies.delete :uid
        cookies.delete :basket_count

        format.html { redirect_to :action => "show",:id=>@sender.sicret }
        format.json { render json: @sender, location: @sender }
      else
        format.html { render action: "new" }
        format.json { render json: @sender.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /senders/1
  # PUT /senders/1.json
  def update
    @sender = Sender.find(params[:id])

    respond_to do |format|
      if @sender.update_attributes(params[:sender])
        format.html { redirect_to @sender, notice: 'Sender was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sender.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /senders/1
  # DELETE /senders/1.json
  def destroy
    @sender = Sender.find(params[:id])
    @sender.destroy

    respond_to do |format|
      format.html { redirect_to senders_url }
      format.json { head :no_content }
    end
  end
end
