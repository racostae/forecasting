class SalesController < ApplicationController
  before_action :set_sale, only: [:edit, :update, :destroy]

  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.new(sale_params)
    if @sale.save
      redirect_to dashboard_index_path, notice: "La venta #{@sale.id} se ha creado satisfactoriament"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @sale.update(sale_params)
      redirect_to dashboard_index_path, notice: "La venta #{@sale.id} se ha actualizado satisfactoriament"
    else
      render 'edit'
    end
  end

  def destroy
    @sale.destroy
    redirect_to sales_path
  end

  private

  def set_sale
    @sale = Sale.find(params[:id])
  end

  def sale_params
    params.require(:sale).permit(:seller_id, :product_id, :plan, :real, :month, :year)
  end
end
