require_relative "soda"
class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
    @sodas.each do |soda|
      if soda.brand == soda_brand
      return soda
      end
    end
    nil
  end

  def sell(soda_brand)
     @sodas.each do |soda|
      if soda.brand == soda_brand
       @cash += soda.price
        @cash
     end
  end
    @sodas.delete(find_soda(soda_brand))
end

end

# pepsi = Soda.new(brand: 'Pepsi', price: 0.65)
# vend = SodaMachine.new( sodas: pepsi, cash: 1 )
# p vend
# p vend.cash
# p vend.sodas.price
