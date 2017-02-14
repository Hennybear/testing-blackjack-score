require "spec_helper"

describe Hand do
  # These UTF-8 characters will be useful for making different hands:
  # '♦', '♣', '♠', '♥'

  let(:hand) { Hand.new(["10♦", "J♥"]) }
  # You can add more sample hands

  describe "#calculate_hand" do
    # We have included some example tests below. Change these once you get started!

    it "returns the sum of the values of the cards in the player's hand" do
      # Use the RSpec keyword `expect`, as it appears below, to test your assertions
      expect(hand.calculate_hand).to eq(20)
    end

    it "returns either 1 or 11 points for and Ace, depending on which value gets the score closer-to, but not over, 21." do
      hand_1 = Hand.new(["A♥", "J♣"])
      expect(hand_1.calculate_hand).to eq(21)
    end

    it "returns either 1 or 11 points for and Ace, depending on which value gets the score closer-to, but not over, 21." do
      hand_2 = Hand.new(["A♥", "J♣", "3♠"])
      expect(hand_2.calculate_hand).to eq(14)
    end

    it "returns either 1 or 11 points for all Aces, depending on which values gets the score closer-to, but not over, 21." do
      hand_2 = Hand.new(["A♥", "J♣", "3♠", "A♥"])
      expect(hand_2.calculate_hand).to eq(15)
    end

  end
end
