module War
  class Card

    SUITS = ['S', 'C', 'H', 'D']
    NUMBERS = (2..14).to_a

    attr_accessor :suit, :number

    def initialize(suit, number)
      number = number.to_i
      if valid?(suit, number)
        @suit = suit
        @number = number
      else
        raise 'Card not valid'
      end
    end

    def valid?(suit, number)
      SUITS.include?(suit) && NUMBERS.include?(number)
    end

  end
end