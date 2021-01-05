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

def bubble_sort_by(arr)
  len = arr.length

  if block_given?
    loop do
      swapped = false

      (len - 1).times do |i|
        left = arr[i]
        right = arr[i + 1]

        if yield(left, right).positive?
          arr[i], arr[i + 1] = arr[i + 1], arr[i]
          swapped = true
        end
      end
      break unless swapped
    end
    puts arr
  else
    puts 'You need to add a block'
  end
end
