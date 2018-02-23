class Product < ApplicationRecord
  paginates_per 5
  mount_uploader :image_url, ImageUploader
  has_many :line_items
  has_many :orders, through: :line_items
  belongs_to :merchant
  before_destroy :ensure_not_referenced_by_any_line_item

  private
  # ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, 'Line Items present')
      throw :abort
    end
  end
end
