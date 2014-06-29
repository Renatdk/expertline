class SubsubcatalogsController < ApplicationController
	def show
	  @ssc = Subsubcatalog.find(params[:id])
    
	  respond_to do |format|
	    format.html # show.html.erb
	    format.json { render json: @ssc }
	  end
	end
end
