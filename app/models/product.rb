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

class Product < ApplicationRecord
  has_many :purchases, dependent: :destroy
end
