# Represent Standard Playng Cards
class PlayingCard
  attr_reader :rank, :suit
  def initialize(suit=0, rank=0)
    @suit = suit
    @rank = rank
  end

  def random
    @suit = %w[hearts spades diamonds clubs].sample
    @rank = rand(13)
    self
  end

  def to_s
    card_to_english
  end

  def card_to_engish
    rank_to_english + ' of ' + @suit
  end

  def valid?
    rank >= 1 && rank <= 13 && !suit.nil?
  end

  private

  def rank_to_english
    if (@rank <= 0 || @rank > 13)
      raise Exception
    end
    %w[fail0 Ace two three four five six seven eight nine ten Jack Queen King][@rank]
  end
end
