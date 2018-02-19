class ProductsController < InheritedResources::Base
  # tambahkan untuk list product
  private

    def product_params
      params.require(:product).permit(:title, :description, :image_url, :price)
    end
end
