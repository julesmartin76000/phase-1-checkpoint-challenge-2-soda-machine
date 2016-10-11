class SodaMachine
  attr_reader :sodas, :cash, :list

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @list = args
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
    @sodas.each do |soda|
      if soda.brand == soda_brand
      return soda
      else
      end
    end
    nil
  end

  def sell(soda_brand)
  end

end
