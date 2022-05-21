require './cart' #=> add this

describe Cart do
  let(:array) { [['GR1', 3, 6.22], ['SR1', 1, 5.0], ['CF1', 1, 11.23]] }
  let(:secondarray) { [['GR1', 1, 3.11], ['SR1', 3, 13.50]] }
  let(:lastarray) { [['GR1', 1, 3.11], ['SR1', 1, 5.0], ['CF1', 3, 22.46]] }
  describe '#scan' do
    it 'adds one pack of Green Tea to cart' do
      cart = Cart.new
      expect(cart.scan('GR1', 1)).to eql([['GR1', 1, 3.11]])
    end
  end

  describe '#scan' do
    it 'adds 3 packs of Green tea to show discount' do
      cart = Cart.new
      expect(cart.scan('GR1', 3)).to eql([['GR1', 3, 6.220000000000001]])
    end
  end

  describe '#scan' do
    it 'adds a strawberry to cart' do
      cart = Cart.new
      expect(cart.scan('SR1', 1)).to eql([['SR1', 1, 5.00]])
    end
  end

  describe '#scan' do
    it 'add 3 packs strawberry to cart to show discount prices' do
      cart = Cart.new
      expect(cart.scan('SR1', 3)).to eql([['SR1', 3, 13.500]])
    end
  end

  describe '#scan' do
    it 'adds a cup of coffee to cart' do
      cart = Cart.new
      expect(cart.scan('CF1', 1)).to eql([['CF1', 1, 11.23]])
    end
  end

  describe '#scan' do
    it 'adds 3 cups of coffee to cart to show discount' do
      cart = Cart.new
      expect(cart.scan('CF1', 3)).to eql([['CF1', 3, 22.460000000009998]])
    end
  end

  describe '#scan' do
    it 'adds 2 packs of Green tea to show discount GR1, GR1' do
      cart = Cart.new
      expect(cart.scan('GR1', 2)).to eql([['GR1', 2, 3.11]])
    end
  end

  describe '#scan' do
    it 'sums their prices  of GR1, SR1, GR1, GR1, CF1' do
      expect(array.sum(&:last)).to eql(22.45)
    end
  end

  describe '#scan' do
    it 'sums their prices of SR1, SR1, GR1, SR1' do
      expect(secondarray.sum(&:last)).to eql(16.61)
    end
  end

  describe '#scan' do
    it 'sums their prices of GR1, CF1, SR1, CF1, CF1' do
      expect(lastarray.sum(&:last)).to eql(30.57)
    end
  end
end
