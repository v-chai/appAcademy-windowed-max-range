class MyQueue
    def initialize
        @store = []
    end

    def enqueue(ele)
        @store.append(ele)
    end

    def dequeue
        @store.shift unless @store.empty?
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