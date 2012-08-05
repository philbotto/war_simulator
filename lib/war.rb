require "war/version"
require "war/card"
require "war/deck"
require "war/player"
require "war/game"

module War
  class <<

    def self.simulate
      game = Game.new
      game.simulate
    end

  end
end
