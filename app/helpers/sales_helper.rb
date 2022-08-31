module SalesHelper
  def group_months
    [
      ["Enero", 1],
      ["Febrero", 2],
      ["Marzo", 3],
      ["Abril", 4],
      ["Mayo", 5],
      ["Junio", 6],
      ["Julio", 7],
      ["Agosto", 8],
      ["Septiembre", 9],
      ["Octumbre", 10],
      ["Noviembre", 11],
      ["Diciembre", 12]
    ]
  end

  def group_years
    ((Time.zone.now.year - 5)..(Time.zone.now.year)).to_a.reverse
  end

  def group_sellers
    Seller.all.map { |seller| [seller.name, seller.id] }
  end

  def group_products
    Product.all.map { |product| [product.name, product.id] }
  end

  def full_date(month_num, year)
    "#{group_months[month_num-1][0]} - #{year}"
  end
end
