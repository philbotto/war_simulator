module War
  class Deck

    def self.generate_deck
      deck = []

      Card::SUITS.each do |suit|
        Card::NUMBERS.each do |number|
          deck << Card.new(suit, number)
        end
      end

      return deck
    end

    attr_accessor :cards

    def initialize
      @cards = self.class.generate_deck
      shuffle
    end

    def shuffle
      @cards = @cards.sort_by{rand}
    end

  end
end