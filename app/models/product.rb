class Product < ApplicationRecord
  has_many :purchases, dependent: :destroy
end
