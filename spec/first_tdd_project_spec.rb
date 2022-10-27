require "rspec"
require "first_tdd_project"

describe "#my_uniq" do
    context "return unique array" do
        it "return unique array" do
            expect([1, 2, 1, 3, 3].my_uniq).to eq([1,2,3])
        end
    end
end

describe "#two_sum" do
    it "returns pairs of positions where the elements sum to zero" do
        expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end
    # it "sorts smaller index before bigger index" do

    # end
end

describe "#my_transpose" do
    it "gets the transpose of a 2-D matrix" do
        rows = [
            [0, 1, 2],
            [3, 4, 5],
            [6, 7, 8]
        ]
          cols = [
            [0, 3, 6],
            [1, 4, 7],
            [2, 5, 8]
        ]
        expect(rows.my_transpose).to eq(cols)
    end
end

describe "#stock_picker" do
    it "return lowest and highest price" do
        expect(stock_picker([85, 5, 91, 23, 106, 73])).to eq([1,4])
    end
end


describe Tower do
    subject(:tower) {Tower.new}

    describe "#initialize" do
        it "has 3 empty arrays" do 
            expect(tower.pile.length).to eq(3)
        end
    end

    describe "#move" do
        it "takes in a number 0-2" do
            expect{tower.move(3,3)}.to raise_error("invalid_move")
        end
    end
end