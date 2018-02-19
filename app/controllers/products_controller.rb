class ProductsController < InheritedResources::Base
  def new_arrivals
    @products = Product.all
    @header_page = "New Arrival"
  end

  def most_populars
    @products = Product.all
    @header_page = "Most Popular"
  end

  def official_brands
    @products = Product.all
    @header_page = "Official Brand"
  end
  private

    def product_params
      params.require(:product).permit(:title, :description, :image_url, :price)
    end
end
