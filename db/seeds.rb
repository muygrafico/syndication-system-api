# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(price_in_dollars: 300000, business_product_id: 7854232322)
Product.create(price_in_dollars: 150000, business_product_id: 3075472457)

productID = Product.find_by(business_product_id: 3075472457).id

Purchase.create(sold: 50000, investor: 'Y combinator', product_id: productID)
Purchase.create(sold: 50000, investor: 'SassStr', product_id: productID)