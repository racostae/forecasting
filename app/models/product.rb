class Product < ApplicationRecord
  has_many :sales, dependent: :destroy
  has_many :sellers, through: :sales
  belongs_to :brand
end
