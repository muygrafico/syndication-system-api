# == Schema Information
#
# Table name: products
#
#  id                  :uuid             not null, primary key
#  price_in_dollars    :bigint(8)
#  business_product_id :bigint(8)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class ProductSerializer
  include FastJsonapi::ObjectSerializer  
  set_key_transform :camel_lower
  set_id :business_product_id
  attributes :price_in_dollars
  attribute :year, &:created_at  
end
