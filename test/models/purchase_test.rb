# == Schema Information
#
# Table name: purchases
#
#  id         :uuid             not null, primary key
#  investor   :string
#  sold       :bigint(8)
#  product_id :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PurchaseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
