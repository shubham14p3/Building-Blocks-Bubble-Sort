# Defining  bubble_ Sort Defination
def bubble_sort(arr)
  loop do
    swapped = false
    (0...arr.length - 1).each do |j|
      if arr[j] > arr[j + 1]
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
        swapped = true
      end
    end
    break unless swapped
  end
  arr
end

# Inserting the list for sorting
bubble_sort([4, 3, 78, 2, 0, 2])

# Defining  bubble_ Sort_by Defination
def bubble_sort_by(arr)
  loop do
    swapped = false
    (0...arr.length - 1).each do |j|
      result = yield(arr[j], arr[j + 1])
      if result.positive?
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
        swapped = true
      end
    end
    break unless swapped
  end
  arr
end

# Initialising
bubble_sort_by(%w[hi","hello hey]) do |left, right|
  left.length - right.length
end
