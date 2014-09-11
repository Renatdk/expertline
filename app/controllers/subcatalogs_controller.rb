class SubcatalogsController < InheritedResources::Base
	def index
	  @subcatalogs = Subcatalog.all
    
	  respond_to do |format|
	    format.html # show.html.erb
        format.json{render :json => @subcatalogs.to_json, :callback => params['callback']}
	  end
	end
end
