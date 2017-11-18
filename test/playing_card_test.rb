require_relative "test_helper"

describe PlayingCard do
  it 'random creates a valid card' do
    @a_card = PlayingCard.new.random
    @a_card.valid?.must_equal true
  end
end
