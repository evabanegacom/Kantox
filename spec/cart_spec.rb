require './cart'  #=> add this

describe Cart do
    describe "#addItem" do
      it "adds Green Tea to cart" do
        cart = Cart.new
        expect(cart.addItem('GR1', 3.11)).to eql([['GR1', 3.11]])
      end
    end

    describe "#addItem" do
      it "adds Coffee to cart" do
        cart = Cart.new
        expect(cart.addItem('CF1', 3.11)).to eql([['CF1', 11.23]])
      end
    end

    describe "#scan" do
      it "sums their prices" do
        cart = Cart.new
        expect(cart.scan()).to eql([['CF1', 11.23]])
      end
    end

  end