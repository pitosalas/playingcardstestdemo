### Represent a Deck of cards
class Deck
  def initialize
    @cards = []
  end

  def deal
    raise Exception if @cards.empty?
    card = @cards.sample
    @cards.delete(card)
    card
  end

  def insert(card)
    rails Exception if @cards.length == 52
    @cards << card
  end


  def length
    @cards.length
  end
end
