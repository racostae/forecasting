class Sale < ApplicationRecord
  belongs_to :seller
  belongs_to :product
  before_save :calculate_data
  after_create :update_inventory

  private

  def calculate_data
    self.error = self.plan - self.real
    self.compliance = (1 - self.error/self.plan.to_f)
    self.plan_error = 1 - self.compliance

    total_inventory = self.seller.products.sum { |p| p.inventory }
    self.weighted = self.plan.to_f / total_inventory
    self.absolut = (self.weighted*self.plan_error).abs
  end

  def update_inventory
    product_to_update = self.product
    product_to_update.update(inventory: product_to_update.inventory - self.real)
  end
end
