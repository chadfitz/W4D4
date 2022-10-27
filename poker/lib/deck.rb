require_relative "card"

class Deck
    attr_reader :discard, :cards

    def self.generate_deck
        arr = [2,3,4,5,6,7,8,9,10,:J,:Q,:K,:A]
        suits_arr = [:D, :S, :C, :H]
        deck = []

        arr.each do |value|
            suits_arr.each do |suit|
                deck << Card.new(value, suit)
            end
        end
        deck
    end

    def initialize
        @cards = Deck.generate_deck
        @discard = []
    end

    def shuffle
        self.cards.shuffle!
    end

    
end
