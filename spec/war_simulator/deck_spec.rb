require 'spec_helper'

describe WarSimulator::Deck do

  context 'generate_deck' do

    before(:all) do
      @deck = WarSimulator::Deck.generate_deck
    end

    it 'should generate deck array' do
      @deck.should be_an Array
    end

    it 'should generate correct first suit' do
      @deck.first.suit.should == 'S'
    end

    it 'should generate correct first number' do
      @deck.first.number.should == 2
    end

  end

  it 'should allow cards to be set' do
    subject.cards = @deck
    subject.cards.should == @deck
  end

  it 'should respond to "shuffle"' do
    subject.should respond_to :shuffle
  end

  it 'should shuffle cards' do
    @cards = subject.cards
    subject.shuffle
    subject.cards.should_not == @cards
  end

end