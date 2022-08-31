class ProductsController < ApplicationController
  before_action :set_product, only: [:edit, :update, :destroy]

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to dashboard_index_path, notice: "El producto #{@product.name} se ha creado satisfactoriament"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to dashboard_index_path, notice: "El producto #{@product.name} se ha actualizado satisfactoriament"
    else
      render 'edit'
    end
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:brand_id, :name, :sku, :average_sale, :inventory)
  end
end
