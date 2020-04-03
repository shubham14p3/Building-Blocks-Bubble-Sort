# Defining  bubble_ Sort Defination
def bubble_sort(array)
  n = array.length
  swapped = true
  while swapped
    swapped = false
    (n - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
  end
  array
end

# Inserting the list for sorting
array = [5, 9, 7, 3, 1]

array
# Calling the function bubble_ Sort
bubble_sort(array)
1
# Defining  bubble_ Sort_by Defination
def bubble_sort_by(array)
  passes = array.length
  while passes.positive?
    swapped = 1
    while swapped < passes
      if yield(array[swapped - 1], array[swapped]).negative?
        array[swapped - 1], array[swapped] = array[swapped], array[swapped - 1]
      end
      swapped += 1
    end
    passes -= 1
  end
  array
end

# Inserting the list for sorting
array = %w[hi hello hey]

# Calling the function bubble_sort_by
bubble_sort_by(array) do |left, right|
  right.length - left.length
end
