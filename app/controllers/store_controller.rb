class StoreController < ApplicationController
  def index
    #Pulls the list of products from the database
    @products = Product.all
  end
end
