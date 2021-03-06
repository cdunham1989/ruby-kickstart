# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
# match_maker true,  true,  true, false, nil    # => [false, false]
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]

def match_maker(opp_or_same, *elements)
  output = []
  elements.each_slice 2 do |first, second|
    first = !!first
    second = !!second
# this is taking the element and converting it into true or false, using a double bang so that it doesn't change it.
    result =  if opp_or_same
                first != second
              else
                first == second
              end
# this is testing to see if the first parameter is true or false and then depending on what it finds it passes through the if or else parts to do the required check.
    output << result
  end
  output
end
