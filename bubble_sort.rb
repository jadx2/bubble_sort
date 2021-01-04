def bubble_sort(array)
  (array.length - 1).times do |i|
    (array.length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
      end
    end
  end
  puts array
end
bubble_sort([4,3,78,2,0,2,5])