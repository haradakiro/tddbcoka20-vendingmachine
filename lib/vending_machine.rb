class VendingMachine

  def initialize
    @stock = []
    5.times {@stock.push(:coke)}
  end


  def insert(money)
    unless @stock.empty?
      money = money - 100

      return @stock.pop if money == 0

      return [@stock.pop, money]

    end
   money
  end
end