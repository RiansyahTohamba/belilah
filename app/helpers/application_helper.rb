module ApplicationHelper
  def get_link_merchant(user_id)
    begin
      content_link  = link_to Merchant.new.get_name(current_user.id),customers_merchants_path, method: 'get'
      content_tag(:li , content_link)
    rescue
    end
  end
end
