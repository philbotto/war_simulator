module War
  class Game

    attr_accessor :player_1, :player_2, :deck

    def initialize
      @deck = Deck.new
      @p1_hand = Player.new.hand
      @p2_hand = Player.new.hand
      deal
    end

    def deal
      cut = @deck.cards.each_slice(@deck.cards.count / 2).to_a
      @deck.cards = nil

      @p1_hand = cut[0]
      @p2_hand = cut[1]
    end

    def simulate
      battles = 0
      war_pile = []

      until player_has_no_cards?
        battles += 1

        if @p1_hand.first.number == @p2_hand.first.number
          war_pile << @p1_hand.shift
          war_pile << @p2_hand.shift

        elsif @p1_hand.first.number > @p2_hand.first.number
          @p1_hand << @p2_hand.shift
          @p1_hand << @p1_hand.shift
          @p1_hand << war_pile
          war_pile = []

        else
          @p2_hand << @p1_hand.shift
          @p2_hand << @p2_hand.shift
          @p2_hand << war_pile
          war_pile = []

        end

        @p1_hand.flatten!
        @p2_hand.flatten!
        war_pile.flatten!
      end

      battles
    end

    def player_has_no_cards?
      @p1_hand.count == 0 || @p2_hand.count == 0
    end

  end
end