class VendingMachine

  def initialize
    @stock = []
    5.times {@stock.push(:coke)}
  end


  def insert(money)
    return @stock.pop unless @stock.empty?

    money
  end
end