class MyStack
    def initialize
        @store = []
    end

    def push(ele)
        @store.append(ele)
    end

    def pop
        @store.pop unless @store.empty?
    end

    def peek
        @store.last unless @store.empty?
    end

    def size
        @store.length 
    end

    def empty?
        self.size == 0
    end
    

end