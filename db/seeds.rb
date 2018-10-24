Product.create(price_in_dollars: 300000, business_product_id: 7854232322)
Product.create(price_in_dollars: 150000, business_product_id: 3075472457)
productID1 = Product.find_by(business_product_id: 7854232322).id
productID2 = Product.find_by(business_product_id: 3075472457).id

Purchase.create(sold: 100000, investor: 'Invest INC', product_id: productID1)
Purchase.create(sold: 50000, investor: 'Y combinator', product_id: productID2)
Purchase.create(sold: 50000, investor: 'SassStr', product_id: productID2)