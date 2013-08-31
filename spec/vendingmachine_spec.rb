require 'rspec'
require 'vending_machine'

describe VendingMachine do

  let(:vm) { VendingMachine.new }

  it '100円入れるとコーラが出てくる' do
    vm.insert(100).should eq(:coke)
  end

  it '500円入れるとコーラとおつり400円が出てくる' do
    vm.insert(500).should eq([:coke,400]);
  end

  it '500円入れてもおつりの在庫がなければコーラがあっても返金する' do
    2.times {vm.insert(500)}
    vm.insert(500).should eq(500);
  end

  it '在庫が空になった後は返金する' do
    # ５回買うと在庫がなくなります。
    5.times {vm.insert(100)}

    vm.insert(100).should eq(100)
  end

end