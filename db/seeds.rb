require './models/user'
require './models/product'
require 'faker'

(0..5).each do |x|
  # Populate product DB
  Product.create(
    url: Faker::Avatar.image,
    name: Faker::Commerce.product_name,
    price: Faker::Commerce.price,
    description: Faker::Hipster.sentence
  )
end
