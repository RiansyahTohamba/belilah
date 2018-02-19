class HomeController < ApplicationController
  def index
    @products = Product.all
    @header_page = "New Arrival"

  end
end
