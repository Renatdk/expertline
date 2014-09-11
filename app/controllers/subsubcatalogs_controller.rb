class SubsubcatalogsController < ApplicationController
	def show
	  @ssc = Subsubcatalog.find(params[:id])
    
	  respond_to do |format|
	    format.html # show.html.erb
	    format.json { render json: @ssc }
	  end
	end
	def index
	  @subsubcatalogs = Subsubcatalog.all
    
	  respond_to do |format|
	    format.html # show.html.erb
        format.json{render :json => @subsubcatalogs.to_json, :callback => params['callback']}
	  end
	end
end
