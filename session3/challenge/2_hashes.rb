# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(number)
  result = {}

  counter = 1

  while counter <= number do
    if counter.odd?
      result[counter] = evens(counter)
    end
    counter += 1
  end
  result
end

def evens(upto)
  evens = []
  start = 2
  while start < upto do
    evens << start
    start += 2
  end
  evens
end
