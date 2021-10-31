require_relative "min_max_stack"

class MinMaxStackQueue
   def initialize
        @incoming = MinMaxStack.new
        @outgoing = MinMaxStack.new
    end

    def enqueue(ele)
        @incoming.push(ele)
    end

    def dequeue
        requeue if @outgoing.empty?
        @outgoing.pop
    end

    def size
        @incoming.size + @outgoing.size
    end

    def empty?
        self.size == 0
    end

    def max
        unless self.empty?
            if @outgoing.empty? || @incoming.empty?
                requeue
                @outgoing.max
            else
               @incoming.max >= @outgoing.max ? @incoming.max : @outgoing.max 
            end
        end
    end

    def min
        unless self.empty?
            if @outgoing.empty? || @incoming.empty?
                requeue
                @outgoing.min
            else
               @incoming.min <= @outgoing.min ? @incoming.min : @outgoing.min 
            end
        end    
    end

    private 

    def requeue
        until @incoming.empty?
            @outgoing.push(@incoming.pop)
        end
    end

end