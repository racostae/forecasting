class DashboardController < ApplicationController
  def index
    @sellers = Seller.all
    @brands = Brand.all
    @products = Product.all
    @sales = Sale.all
  end
end
