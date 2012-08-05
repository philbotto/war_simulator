require 'spec_helper'

describe WarSimulator::Game do

  context 'attributes' do

    before(:all) do
      @card = WarSimulator::Card.new('S', 2)
    end

    it 'should allow p1_hand to be set' do
      subject.p1_hand = [@card]
      subject.p1_hand.should == [@card]
    end

    it 'should allow p2_hand to be set' do
      subject.p2_hand = [@card]
      subject.p2_hand.should == [@card]
    end

  end

  context 'new game' do

    it 'should set new deck' do
      subject.deck.should be_a WarSimulator::Deck
    end

    it 'should deal out deck' do
      subject.deck.cards.should == nil
    end

    it 'should set cards to p1_hand' do
      subject.p1_hand.first.should be_a WarSimulator::Card
    end

    it 'should set cards to p2_hand' do
      subject.p2_hand.first.should be_a WarSimulator::Card
    end

    it 'should set correct p1_hand' do
      subject.p1_hand.count.should == 26
    end

    it 'should set correct p2_hand' do
      subject.p2_hand.count.should == 26
    end

  end

  context 'simulate' do

    it 'should return integer' do
      subject.simulate.should be_an Integer
    end

    it 'should be positive' do
      subject.simulate.should > 0
    end

  end

end