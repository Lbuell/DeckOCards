class Card

  SUITS = %w{ hearts diamonds spades clubs }
  RANKS = %w{ 2 3 4 5 6 7 8 9 10 J Q K A }

  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank.to_s.upcase
    @suit = suit.downcase
  end
end

class Deck
  def initialize
    @box = []
    Card::SUITS.each do |suit|
      Card::RANKS.each do |rank|
        box = Card.new(rank, suit)
        @box.push(box)
      end
    end
  end

  def show
    @box.each do |c|
      puts "#{c.rank} #{c.suit}"
    end
  end

  def cards
    @box
  end
end

deck = Deck.new
deck.show

