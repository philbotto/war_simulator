# War simulator
[![Build Status](https://secure.travis-ci.org/philbott/war_simulator.png?branch=master)][travis] [![Dependency Status](https://gemnasium.com/philbott/war_simulator.png?travis)][gemnasium]

[travis]: http://travis-ci.org/philbott/war_simulator
[gemnasium]: https://gemnasium.com/philbott/war_simulator

Simulator for the War card game. Gives a summary of the game
including the number of rounds that are needed before a player
wins.

For more info and how to play see: http://en.wikipedia.org/wiki/War_(card_game).

## Installation

Install it:

```bash
$ gem install war_simulator
```

## Usage

To run a new simulaton:

```ruby
WarSimulator.run
```

Then the number of rounds will be outputted:

```irb
=> 234
```

## Todo

- Improve on specs
- Add ability to use certain range of cards (eg. Ace to 10)
- Account for more than two players

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
