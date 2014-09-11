class ProductsSubcatalogsController < ApplicationController
  def index
    @ProductsSubcatalogs = ProductsSubcatalogs.all
    
    respond_to do |format|
      format.html
      format.csv { send_data @products.to_csv }
      format.xls # { send_data @products.to_csv(col_sep: "\t") }
      format.json{render :json => @ProductsSubcatalogs.to_json, :callback => params['callback']}
    end
  end
end
