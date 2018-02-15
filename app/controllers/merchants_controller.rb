class MerchantsController < InheritedResources::Base

  private

    def merchant_params
      params.require(:merchant).permit(:name, :image_url, :description, :products_id)
    end
end

