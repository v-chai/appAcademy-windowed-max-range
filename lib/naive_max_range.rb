

def naive_max_range(array, w)
    # O(n^2) time complexity -- First loop over each index, then loop through slice for max and min
    # O(n+1) space (updating window_range variable for each index)
    current_max_range = 0
    (0...array.length).each do |idx|
        window_range = array[idx...idx+w].max - array[idx...idx+w].min
        if window_range > current_max_range
            current_max_range = window_range
        end
    end
    current_max_range
end

