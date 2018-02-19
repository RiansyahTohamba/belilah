# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


Product.create!(title: "sweater abu", description: "spesifikasi singkat aja ya gan / sis untuk produk ...",
  image_url: "product_10.png", price: 123) if Rails.env.development?

Product.create!(title: "sweater lain", description: "spesifikasi singkat aja ya gan / sis untuk produk ...",
  image_url: "single_2.jpg", price: 123) if Rails.env.development?

Product.create!(title: "sweater abu", description: "spesifikasi singkat aja ya gan / sis untuk produk ...",
  image_url: "product_10.png", price: 123) if Rails.env.development?

Product.create!(title: "sweaterlain", description: "spesifikasi singkat aja ya gan / sis untuk produk ...", image_url: "product_7.png"
  , price: 123) if Rails.env.development?

Product.create!(title: "sweaterlain", description: "spesifikasi singkat aja ya gan / sis untuk produk ...", image_url: "product_7.png"
  , price: 123) if Rails.env.development?

Product.create!(title: "sweaterlain", description: "spesifikasi singkat aja ya gan / sis untuk produk ...", image_url: "product_7.png"
  , price: 123) if Rails.env.development?


  Product.create!(title: "sweater lain", description: "spesifikasi singkat aja ya gan / sis untuk produk ...",
    image_url: "single_2.jpg", price: 123) if Rails.env.development?
