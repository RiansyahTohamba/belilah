# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Merchant.create!(id: 1, name: "Rabbani",address: "Jl Cimahi")
Merchant.create!(id: 2, name: "Adidas",address: "Jl Cimahi")
Product.create!(title: "sweater abu", description: "spesifikasi singkat aja ya gan / sis untuk produk, bagus banget lah pokoknya",price: 12,merchant_id: 1)
Product.create!(title: "sweater draxler", description: "spesifikasi singkat aja ya gan / sis untuk produk, bagus banget lah pokoknya",price: 3123,merchant_id: 2)
Product.create!(title: "sweater julian", description: "spesifikasi singkat aja ya gan / sis untuk produk, bagus banget lah pokoknya",price: 143,merchant_id: 2)
Product.create!(title: "sweater pogba", description: "spesifikasi singkat aja ya gan / sis untuk produk, bagus banget lah pokoknya",price: 123,merchant_id: 1)
Product.create!(title: "baju bagus", description: "spesifikasi singkat aja ya gan / sis untuk produk, bagus banget lah pokoknya",price: 123,merchant_id: 1)
