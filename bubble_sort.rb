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
  arr
end

def bubble_sort_by(arr)
  len = arr.length

  loop do
    swapped = false

    (len - 1).times do |i|
      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break unless swapped
  end
  arr
end

sort = bubble_sort_by(%w[hey hello hi h]) do |left, right|
  left.length <=> right.length
end

p sort
p bubble_sort([1, 4, 6, 9, 10, 8, 7, 5, 2, 3])
