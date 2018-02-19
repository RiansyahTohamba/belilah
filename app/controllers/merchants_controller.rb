class MerchantsController < InheritedResources::Base
  # masalahnya bagaimana cara simpan product Id yang ada di merchant nanti
  def create
    @merchant = Merchant.new(merchant_params)

    respond_to do |format|
      if @merchant.save
        format.html { redirect_to @merchant, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @merchant }
      else
        format.html { render :new }
        format.json { render json: @merchant.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def merchant_params
      params.require(:merchant).permit(:name, :image_url, :description, :products_id)
    end
end
