class CatalogsController < InheritedResources::Base
	def index
	  @catalogs = Catalog.all
    
	  respond_to do |format|
	    format.html # show.html.erb
	    format.json { render json: @catalogs }
	  end
	end
end
