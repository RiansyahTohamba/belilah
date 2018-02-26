class User < ApplicationRecord
  # belongs_to berarti merchant_id ada di User
  # di buat opsi true, agar merchant ga harus dibutuhkan saat di save
  belongs_to :merchant,optional: true
  has_many :purchases
  has_many :products, through: :merchant
  has_many :line_items, through: :products
  has_many :orders, through: :line_items
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
