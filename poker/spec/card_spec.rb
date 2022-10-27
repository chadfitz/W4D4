#make cards 2-10, J,Q,K,A
#clubs, hearts, diamonds, spades
#shuffle
require 'card'
require 'rspec'

describe Card do
    subject(:card) {Card.new(:K, 'diamond')}
    describe "#initialize" do
        context "Generate card" do
            it "Create Value of card" do
                expect(card.value).to eq(:K)
            end

            it "create suit of card" do
                expect(card.suit).to eq('diamond')
            end
        end
    end


end
