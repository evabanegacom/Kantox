class Cart
    def initialize
        @cartitems = Array.new
        @counter = 0
    end
    
    def addItem(product_code, price=0)
        price = 0
        appearance = 0
        coffee = 0
        greentea = 0
        strawberry = 0
        if(product_code) == 'SR1'
            strawberry+=1
            price = 5.11*strawberry
        end

        if(product_code) == 'CF1'
            coffee+=1
            price = 11.23*coffee
        end

        if (product_code) == 'GR1'
            greentea+=1
            price = 3.11*greentea
        end
        
        @counter += 1
        @cartitems.push([product_code, price])
        # @cartitems.each do |x|
        #     if x[0] == 'GR1'
        #         appearance+=1
        #         if appearance > 1
        #             price = (3.11*greentea) - 3.11
        #         end
        #     end
        # end
    end
    
    def scan
        puts("There are currently " + @counter.to_s + " items in the cart.")
        @cartitems.each do |item|
            product_code = item[0]
            price = item[1]
            puts("product_code: " + product_code + " | price: " + "#{price}")
        end
         total = @cartitems.sum(&:last)
         puts('Total Cost ' + '| '  + "#{total}")
         total
    end
end

a = Cart.new
a.addItem('SR1')
a.addItem('CF1')
a.addItem('GR1')
a.addItem('GR1')
print a.scan