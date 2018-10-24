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

class Purchase < ApplicationRecord
  belongs_to :product
end
