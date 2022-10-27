class Array
    def my_uniq
        self.uniq
    end

    def two_sum
        arr = []
        (0...self.length).each do |i|
            (0...self.length).each do |j|
                if j > i && self[j]+self[i] == 0
                    arr<<[i,j]
                end
            end
        end
        arr
    end

    def my_transpose
        self.transpose
    end
end

def stock_picker(arr)
    [arr.index(arr.min), arr.index(arr.max)]
end



class Tower
    attr_reader :pile

    def initialize
        @pile = [[1,2,3],[],[]]
    end

    def move(start_pos, end_pos)
        raise 'invalid_move' if start_pos == end_pos

        shifted = self.pile[start_pos].shift
        self.pile[end_pos].unshift(shifted)
        self.pile

    end
end

# t = Tower.new()

# p t.move(0,1)
