class VendingMachine

  def initialize
    @stock={}
    @stock[:tea]=[]
    @stock[:coke]=[]
    5.times {@stock[:tea].push(:tea)}
    5.times {@stock[:coke].push(:coke)}

    @change = []
    10.times {@change.push(:coin100)}
  end

  def insert(money,type=:coke)
    return money if @stock[type].empty?
    return money if @change.count < 4

    money = money - 100
    coin_number = money / 100
    coin_number.times{@change.pop}
    if money == 0
      @stock[type].pop
    else
      [@stock[type].pop, money]
    end
  end
end