require 'spec_helper'

describe WarSimulator::Card do

  subject { WarSimulator::Card.new('S', 2) }

  it 'should allow suit to be set' do
    subject.suit = 'C'
    subject.suit.should == 'C'
  end

  it 'should allow number to be set' do
    subject.number = 3
    subject.number.should == 3
  end

  it 'invalid suit should raise exception' do
    expect{ WarSimulator::Card.new('A', 2) }.to raise_error(RuntimeError)
  end

  it 'invalid number should raise exception' do
    expect{ WarSimulator::Card.new('S', 20) }.to raise_error(RuntimeError)
  end

  it 'should respond to "valid?"' do
    subject.should respond_to :valid?
  end

  context 'valid?' do

    it 'should return true for valid card' do
      subject.valid?('C', 2).should == true
    end

    it 'should return false for invalid suit' do
      subject.valid?('A', 2).should == false
    end

    it 'should return false for invalid number' do
      subject.valid?('C', 1).should == false
    end

  end

end