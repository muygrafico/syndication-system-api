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

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
