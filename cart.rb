class Cart
  def initialize
    @cartitems = []
    @counter = 0
  end

  def scan(product_code, qty, price = 0)
    coffee = 0
    greentea = 0
    strawberry = 0
    if product_code == 'SR1'
      strawberry += qty
      price = 5.00 * strawberry
      price = if strawberry >= 3
                4.5 * strawberry
              else
                5.00 * strawberry
              end
    end

    if product_code == 'CF1'
      coffee += qty
      price = if coffee >= 3
                7.48666666667 * coffee
              else
                11.23 * coffee
              end
    end

    if product_code == 'GR1'
      greentea += qty
      price = if greentea > 1
                (3.11 * greentea) - 3.11
              else
                3.11
              end
    end

    @counter += 1
    @cartitems.push([product_code, qty, price])
  end

  def total
    puts('There are currently ' + @counter.to_s + ' items in the cart.')
    @cartitems.each do |item|
      product_code = item[0]
      quantity = item[1]
      price = item[2]
      puts('product_code: ' + product_code + ' | price: ' + price.to_s + ' | quantity ' "#{quantity}")
    end
    total = @cartitems.sum(&:last)
    puts('Total Cost ' + '| ' + total.to_s)
    total
  end
end

a = Cart.new
a.scan('SR1', 3)
#a.scan('CF1', 1)
a.scan('GR1', 1)
print a.total
