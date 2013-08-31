require 'rspec'
require './vending_machine'

describe VendingMachine do

  it 'should do something' do
    vm = VendingMachine.new

    vm.insert(100).should eq(:coke)
  end
end