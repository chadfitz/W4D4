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
end