arrays = [
  [1, 2, 3, 4, 5],
  [0, -1, 2, -3, 1],
  [11, -4, 7, 8, -10]
]
sums = [5, -2, 3]
array = arrays.sample
sum = sums.sample

def two_sum

  #
end


def two_sum_brute(array, sum)
  pairs = []
  start = Time.now
  (0...array.length).each do |i|
    (i + 1...array.length).each do |j|
      if array[i] + array[j] == sum
        pairs << [array[i], array[j]]
      end
    end
  end
  finish = Time.now
  diff= finish - start
  pp format( 'Brute force: %.6f seconds', diff)
  return pairs
end



def two_sum(array, sum)
  pairs = []
  seen = {}
  start = Time.now
  array.each do |num|
    complement = sum - num
    if seen[complement]
      pairs << [complement, num]
    end
    seen[num] = true
  end
  finish = Time.now
  diff= finish - start
  pp format('%.6f seconds', diff)
  return pairs
end

# pp array
# pp sum
# pp two_sum_brute(array, sum)
