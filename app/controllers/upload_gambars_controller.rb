class UploadGambarsController < InheritedResources::Base

  private

    def upload_gambar_params
      params.require(:upload_gambar).permit(:title, :image_url)
    end
end

