require_relative "my_stack"

class MinMaxStack 
    attr_reader :min, :max
    def initialize
        @store = MyStack.new
    end

    def push(ele)
        @store.push( {
            val: ele,
            max: update_max(ele),
            min: update_min(ele)
        })
    end

    def pop
        @store.pop[:val] unless @store.empty?
    end

    def peek
        @store.peek[:val] unless @store.empty?
    end

    def max
        @store.peek[:max] unless @store.empty?
    end

    def min
        @store.peek[:min] unless @store.empty?
    end

    def size
        @store.size 
    end

    def empty?
        self.size == 0
    end

    private
    
    def update_max(ele)
        !self.max || ele > self.max ? ele : self.max
    end

    def update_min(ele)
        !self.min || ele < self.min ? ele : self.min
    end

end