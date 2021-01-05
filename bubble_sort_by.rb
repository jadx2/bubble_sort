def bubble_sort_by(arr)
  len = arr.length

  loop do
    swapped = false

    (len - 1).times do |i|
      left = arr[i]
      right = arr[i + 1]

      if block_given?
        if yield(left, right).positive?
          arr[i], arr[i + 1] = arr[i + 1], arr[i]
          swapped = true
        end
      else
        if (left.length <=> right.length).positive?
          arr[i], arr[i + 1] = arr[i + 1], arr[i]
          swapped = true
        end
      end
    end

    break if !swapped
  end
  puts arr
end

bubble_sort_by(["hi", "hello", "hey", "h"]) { |left, right| left.length <=> right.length }
