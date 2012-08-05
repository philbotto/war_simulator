require "war_simulator/version"
require "war_simulator/card"
require "war_simulator/deck"
require "war_simulator/player"
require "war_simulator/game"

module WarSimulator
  class <<

    def self.run
      game = Game.new
      game.simulate
    end

  end
end
