module WarSimulator
  class Game

    WAR_CARDS = 3

    attr_accessor :p1_hand, :p2_hand, :deck, :war_hold

    def initialize
      @deck = Deck.new
      @p1_hand = Player.new.hand
      @p2_hand = Player.new.hand
      @war_hold = []
      @p1_war_cards = []
      @p2_war_cards = []
      deal
    end

    def deal
      raise 'Cards already delt' if @deck.cards.nil?
      cut = @deck.cards.each_slice(@deck.cards.count / 2).to_a
      @deck.cards = nil

      @p1_hand = cut[0]
      @p2_hand = cut[1]
    end

    def simulate
      battles = 0

      until player_has_no_cards?
        battles += 1

        if @p1_hand.first.number == @p2_hand.first.number
          @war_hold << @p1_hand.shift
          @war_hold << @p2_hand.shift
          setup_war

        elsif @p1_hand.first.number > @p2_hand.first.number
          @p1_hand << @p2_hand.shift
          @p1_hand << @p1_hand.shift

        else
          @p2_hand << @p1_hand.shift
          @p2_hand << @p2_hand.shift

        end

        flatten_hands
      end

      battles
    end

    def setup_war
      WAR_CARDS.times do
        @p1_war_cards << @p1_hand.shift unless @p1_hand.empty? and return
        @p2_war_cards << @p2_hand.shift unless @p2_hand.empty? and return
      end

      @p1_war_cards.flatten!
      @p2_war_cards.flatten!

      pick_and_compare
    end

    def pick_and_compare
      p1_pick = @p1_war_cards.shuffle.first
      p2_pick = @p2_war_cards.shuffle.first

      @war_hold << @p1_war_cards
      @war_hold << @p2_war_cards

      @p1_war_cards = []
      @p2_war_cards = []

      flatten_hands

      if p1_pick.number == p2_pick.number
        setup_war

      elsif p1_pick.number > p2_pick.number
        @p1_hand << @war_hold
        @war_hold = []

      else
        @p2_hand << @war_hold
        @war_hold = []
      end

    end

    def player_has_no_cards?
      @p1_hand.count == 0 || @p2_hand.count == 0
    end

    def flatten_hands
      @p1_hand.flatten!
      @p2_hand.flatten!
      @war_hold.flatten!
    end

  end
end