

# SMALL DATA SET
small_array = [2,4,7,8,10,6,5,4,1,3]
small_sum = 7



# CREATES THE LARGE DATA SET
large_array = Array.new
10000.times do
  large_array.push(rand(0..10000))
end
large_sum = rand(1..50000)




# BRUTE FORCE WAY OF SOLVING

def two_sum_brute(array, sum)
  pairs = []  # INITIALIZE AN EMPTY ARRAY TO STORE PAIRS THAT SUM TO THE TARGET
  start = Time.now  # RECORD THE START TIME FOR PERFORMANCE MEASUREMENT

  # OUTER LOOP: ITERATE THROUGH EACH INDEX OF THE ARRAY FROM 0 TO ARRAY.LENGTH - 1
  (0...array.length).each do |i|
    # INNER LOOP: ITERATE THROUGH EACH INDEX STARTING FROM i + 1 TO ARRAY.LENGTH - 1
    (i + 1...array.length).each do |j|
      # CHECK IF THE SUM OF THE ELEMENTS AT INDEX i AND j EQUALS THE TARGET SUM
      if array[i] + array[j] == sum
        pairs << [array[i], array[j]]  # IF YES, ADD THE PAIR (ARRAY[I], ARRAY[J]) TO THE PAIRS ARRAY
      end
    end
  end

  finish = Time.now  # RECORD THE END TIME FOR PERFORMANCE MEASUREMENT
  diff = finish - start  # CALCULATE THE TIME DIFFERENCE
  pp format('Brute force way: %.6f seconds', diff)  # PRINT THE TIME DIFFERENCE FORMATTED TO 6 DECIMAL PLACES

  return pairs  # RETURN THE ARRAY OF PAIRS THAT SUM TO THE TARGET
end


# -----------------------------------------------------------------------------------------------------------------



# OPTIMAL WAY OF SOLVING

def two_sum(array, sum)
  pairs = []  # INITIALIZE AN EMPTY ARRAY TO STORE PAIRS THAT SUM TO THE TARGET
  seen = {}   # INITIALIZE AN EMPTY HASH TO KEEP TRACK OF SEEN NUMBERS
  start = Time.now  # RECORD THE START TIME FOR PERFORMANCE MEASUREMENT

  array.each do |num|  # ITERATE THROUGH EACH NUMBER IN THE ARRAY
    complement = sum - num  # CALCULATE THE COMPLEMENT THAT WOULD SUM TO THE TARGET WITH THE CURRENT NUMBER
    if seen[complement]  # CHECK IF THE COMPLEMENT HAS BEEN SEEN BEFORE
      pairs << [complement, num]  # IF YES, ADD THE PAIR (COMPLEMENT, CURRENT NUMBER) TO THE PAIRS ARRAY
    end
    seen[num] = true  # MARK THE CURRENT NUMBER AS SEEN
  end

  finish = Time.now  # RECORD THE END TIME FOR PERFORMANCE MEASUREMENT
  diff = finish - start  # CALCULATE THE TIME DIFFERENCE
  pp format('Optimal way: %.6f seconds', diff)  # PRINT THE TIME DIFFERENCE FORMATTED TO 6 DECIMAL PLACES

  return pairs  # RETURN THE ARRAY OF PAIRS THAT SUM TO THE TARGET
end




# -----------------------------------------------------------------------------------------------------------------




def two_sum_two_pointer(array, target_sum)
  pairs = []  # INITIALIZE AN EMPTY ARRAY TO STORE PAIRS THAT SUM TO THE TARGET

  start = Time.now  # RECORD THE START TIME FOR PERFORMANCE MEASUREMENT

  array.sort!  # SORT THE ARRAY FIRST TO USE THE TWO-POINTER TECHNIQUE

  left = 0  # INITIALIZE THE LEFT POINTER AT THE START OF THE ARRAY
  right = array.length - 1  # INITIALIZE THE RIGHT POINTER AT THE END OF THE ARRAY

  while left < right  # CONTINUE WHILE THE LEFT POINTER IS LESS THAN THE RIGHT POINTER
    current_sum = array[left] + array[right]  # CALCULATE THE SUM OF VALUES AT THE POINTERS

    if current_sum == target_sum  # IF THE SUM MATCHES THE TARGET
      pairs << [array[left], array[right]]  # ADD THE PAIR TO THE RESULT ARRAY
      left += 1  # MOVE THE LEFT POINTER INWARD
      right -= 1  # MOVE THE RIGHT POINTER INWARD
    elsif current_sum < target_sum  # IF THE SUM IS LESS THAN THE TARGET
      left += 1  # MOVE THE LEFT POINTER INWARD TO INCREASE THE SUM
    else  # IF THE SUM IS GREATER THAN THE TARGET
      right -= 1  # MOVE THE RIGHT POINTER INWARD TO DECREASE THE SUM
    end
  end

  finish = Time.now  # RECORD THE END TIME FOR PERFORMANCE MEASUREMENT
  diff = finish - start  # CALCULATE THE TIME DIFFERENCE
  pp format('Two Pointer Way: %.6f seconds', diff)  # PRINT THE TIME DIFFERENCE FORMATTED TO 6 DECIMAL PLACES

  return pairs  # RETURN THE ARRAY OF PAIRS THAT SUM TO THE TARGET
end



# pp "Brute force way: #{two_sum_brute(large_array, large_sum)}"

# pp "Two Pointer Way: #{two_sum_two_pointer(large_array, large_sum)}"

# pp "Optimal way: #{two_sum(large_array, large_sum)}"
