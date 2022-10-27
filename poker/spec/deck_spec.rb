##will have 52 instances each card is different
## will generate 52 cards in an array
## shuffle method
##[2..10, j, q, k, a]
## [d, s, c, h]


require 'rspec'
require 'deck'


describe Deck do
    subject(:deck) {Deck.new}

    describe "::generate_deck" do
        it "has array of length 52" do
            expect(Deck.generate_deck.length).to eq(52)
        end
        it "has array.uniq length of 52" do
            expect(Deck.generate_deck.uniq.length).to eq(52)
        end

    end
    describe "#initialize" do
        it "creates a deck using ::generate_deck" do
            expect(Deck.cards).to eq(Deck.generate_deck)
        end

        it "creates an empty discard pile" do
            expect(deck.discard).to eq([])
        end
    end
end
