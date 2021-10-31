require_relative "my_stack"

class StackQueue
    def initialize
        @incoming = MyStack.new
        @outgoing = MyStack.new
    end

    def enqueue(ele)
        @incoming.push(ele)
    end

    def dequeue
        unless self.empty?
            if @outgoing.empty?
                until @incoming.empty?
                    @outgoing.push(@incoming.pop)
                end
            end
            @outgoing.pop
        end
    end

    def peek
        unless self.empty?
            if @outgoing.empty?
                until @incoming.empty?
                    @outgoing.push(@incoming.pop)
                end
            end
            @outgoing.peek
        end
    end

    def size
        @incoming.size + @outgoing.size
    end

    def empty?
        self.size == 0
    end



end