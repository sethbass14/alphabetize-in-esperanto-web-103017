def alphabetize(arr) #This took me hours and I still think it may be sloppy
  def helper (a, b) #
    esperanto_alphabet = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz" #added ' ' as index 0
    a_array = a.split('') #splits up first word into an array
    a_array.each_with_index do |letter, index| #cycles through the array with has each letter as an element. The index will allow us to compare the letters in the same index of each word
      if a[index] != b[index] #This will return and stop the iteration as soon as a != b.
        return esperanto_alphabet.index(a[index]) <=> esperanto_alphabet.index(b[index]) #spaceship operator returns -1 if the left side is less than the right, 1 if it is the opposite. Returns 0 if they are the same. But the line above ignores the return if it equals 0 and continues to the next letter.
      end
    end
  end
  arr.sort {|a, b| helper(a, b)} # using the helper method returns either a 1 or -1. Sort's internal method places b to the left in the array if the helper method evalutaes to 1.
end
