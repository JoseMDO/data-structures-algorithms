# The problem
# Write a function that:

# Takes an unsorted array of integers (array) and an integer (k).

# Finds the kth largest element in the sorted order, not the kth distinct element.

# Returns the kth largest element.

# Consider the array [3, 2, 1, 5, 6, 4] and k = 2. What is the 2nd largest element in this array?


arrays = [
  [3, 2, 1, 5, 6, 4],
  [3, 2, 3, 1, 2, 4, 5, 5, 6],
  [1, 2, 3, 4, 5, 6, 7, 8, 9]
]
ks = [2, 4, 5]
array = arrays.sample
k = ks.sample

def find_kth_largest_heap(array, k)
  return nil if array.empty? || k <= 0 || k > array.length

  start = Time.now
  heap = array[0...k].sort
  pp heap
  # Iterate through the remaining elements
  array[k..-1].each do |num|
    # Add elements larger than the smallest in the heap
    if num > heap[0]
      	heap.delete_at(0) # Remove the smallest element
      	heap.push(num) # Add the current element
    end
  end
  finish = Time.now
  diff = finish - start
  pp format('Heap method: %.6f seconds', diff)
  heap[0] # Return the root of the heap (the kth largest element)
end


# [1, 2, 3, 4, 5, 6]

def find_kth_largest(array, k)
  start = Time.now
  array.sort
  finish = Time.now
  diff = finish - start
  pp format('Sort method: %.6f seconds', diff)
  return array[array.length - k]
end



pp array
puts k
puts find_kth_largest_heap(array, k)
