def sort arr
  rec_sort arr, []
end

def rec_sort unsorted, sorted
    if unsorted.length <= 0
      return sorted
    end

    #There are still items in the array to sort

    smallest = unsorted.pop
    still_unsorted = []

    unsorted.each do |tested_object| #this mthd pushes all words (except for smallest) to 'still unsorted'
      if tested_object < smallest  #if smallest larger than tested obj, push smallest to 'still unsorted'
        still_unsorted.push smallest
        smallest = tested_object
      else
        still_unsorted.push tested_object #but if tested obj larger than smallest, push tested obj to 'still unsorted'
      end
    end

    sorted.push smallest

    rec_sort still_unsorted, sorted #call rec_sort using the new (and smaller) array of still_unsorted

end

puts(sort(['can','base','abba','sport']))
