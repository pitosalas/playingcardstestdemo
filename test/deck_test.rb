require_relative "test_helper"

describe Deck do
  it "starts out empty" do
    deck = Deck.new
    deck.length.must_equal 0
  end

  it 'can deal a card' do
    deck = Deck.new
    deck.insert(PlayingCard.new.random)
    acard = deck.deal
    acard.valid?.must_equal true
  end

  it "can receive a card" do
    deck = Deck.new
    deck.insert(PlayingCard.new.random)
    deck.length.must_equal 1
  end
end
