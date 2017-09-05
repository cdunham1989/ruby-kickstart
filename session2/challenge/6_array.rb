# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime.
#
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself.
#
# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
#
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false

def prime_chars?(words)

length = 0

  words.each do |w|
    length += w.length
  end

    if is_prime?(length)
      return true
    else
      return false
    end
end

def is_prime?(number)
  return false if number == 0 || number == 1
  loop_start = 2
  loop_end = number-1

  (loop_start..loop_end).each do |n|
    if number % n == 0
      return false
    end
  end
  return true
end
