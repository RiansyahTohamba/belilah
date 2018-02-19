class CartsController < InheritedResources::Base
  before_action :set_cart, only: %i[show edit update destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart
  def destroy
    @cart.destroy if @cart.id == session[:cart_id]
    session[:cart_id] = nil
    respond_to do |format|
      format.html { redirect_to store_index_url,
          notice: 'Your cart is currently empty' }
      format.json { head :no_content }
    end
  end
  private

  def invalid_cart
    logger.error "Attempt to access invalid cart #{params[:id]}"
    redirect_to store_index_url, notice: 'Invalid cart'
  end

  def cart_params
    params.require(:cart).permit
  end
end