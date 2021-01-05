def bubble_sort(arr)
  len = arr.length
  loop do
    swapped = false

    (len - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end

    break unless swapped
  end
  puts arr
end

bubble_sort([4, 3, 78, 2, 0, 2, 5])
