class Seller < ApplicationRecord
  has_many :sales, dependent: :destroy
  has_many :products, through: :sales
end
