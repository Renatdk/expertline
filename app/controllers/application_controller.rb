class ApplicationController < ActionController::Base


before_filter :catalogs_fun

def catalogs_fun
    @cats=Catalog.find(:all, :order => "sortnum")
end
 
  protect_from_forgery

end
