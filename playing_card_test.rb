require_relative "test_helper"

describe PlayingCard do
  it 'creates a valid card' do
    @a_card = PlayingCard.new.random
    @a_card.valid?.must_equal true
  end

  it 'Cant create an invalid card' do
    assert_raises Exception do
      PlayingCard.new(suit: 100, rank: 200)
    end
  end
end
