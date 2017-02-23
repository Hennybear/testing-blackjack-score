require_relative 'deck'

require 'pry'


class Hand
  def initialize(cards)
    @cards = cards
    @suitless_cards = []
    @card_value = []
    remove_suits
    value
  end

  def calculate_hand
    # Your code here after writing tests
    # Think about what this method needs to do
    score = 0
    @card_value.each do |card|
      score += card
    end
    @card_value.each do |card|
      if score > 21 && card == 11
        score -= 10
      end
    end
    score
  end

 private
  def value
    result = 0
    @suitless_cards.each do |card|
      # if card == "1" || card == "2" || card == "3" || card == "4" || card == "5" || card == "6" || card == "7" || card == "8" || card == "9" || card == "10"
      if card == "J" || card == "Q" || card == "K"
        @card_value << 10
      elsif card == "A"
        @card_value << 11
      else
        @card_value << card.to_i
      end
      @card_value
    end
    # binding.pry
  end

  def remove_suits
    @cards.each do |card|
      @suitless_cards << card[0..-2] #.gsub(/[^0-9a-z ]/i, '')
    end
  end

end

# deck = Deck.new
# cards = deck.deal(2)
# hand = Hand.new(cards)
# hand.calculate_hand # Get this working properly
hand = Hand.new(["9♥", "J♣"])
puts hand.calculate_hand
