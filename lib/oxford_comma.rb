names = ["Uriah", "Laura", "Pascal", "Justine"]

# There are different was to write this method. Notice 2 different ways.

#First way that I wrote it
def oxford_comma(array) #convert array into list of strings with the word "and" on the last array if more than 1
  if array.size > 2 #if array is more than 2
    x = 'and ' << array[-1] #modify the last element in the array by adding 'and' and saving that modified value to a variable
    array.pop #remove the last element in the array
    array << x #insert the modified last element back into the array
    array.join(", ") #convert array into list of strings with commas in between
  elsif array.size > 1 #convert array of more than 1 into strings
    array.join(" and ") #convert array into strings adding " and " in between
  else # all other arrays go here(anything with 1 element)
    array.join #convert the 1 element array into a string
  end
end

# Second way that I wrote it
def oxford_comma(array)
  if array.size >= 3
    array[-1].insert(0, "and ") #insert 'and ' at the beginning of last element in the array
    array.join(", ") #convert the modified array into a list of comma-separated strings
  elsif array.size >= 2
    # The 2 lines below also work, but array.join(" and ") does it simplier
    # array[-1].insert(0, " and ")
    # array.join
    array.join(" and ") #convert the 2 element array adding an " and " in between
  else
    array.join
  end
end
