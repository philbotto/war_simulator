require 'spec_helper'

describe WarSimulator::Player do

  it 'should respond to "hand"' do
    subject.should respond_to :hand
  end

  it 'new player should have empty hand' do
    subject.hand.should == nil
  end

  it 'should allow hand to be set' do
    card = WarSimulator::Card.new('S', 2)
    subject.hand = [card]
    subject.hand.should == [card]
  end

end