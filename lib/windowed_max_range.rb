require_relative "min_max_stack_queue"

def windowed_max_range(array, w)
    # O(n) time complexity -- Single pass through array to enqueue/dequeue elements and check max range
    range = MinMaxStackQueue.new
    greatest_range = nil
    (0...w).each do |i|
        range.enqueue(array[i])
        greatest_range = range.max - range.min
        
    end

    (w...array.length).each do |i|
        range.dequeue
        range.enqueue(array[i])
        greatest_range = (range.max - range.min) if (range.max - range.min) > greatest_range
    end
    greatest_range
end

if __FILE__ == $PROGRAM_NAME
  p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
  p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
  p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
  p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8
end