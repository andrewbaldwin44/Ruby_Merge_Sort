def merge_sort(list)
  n = list.length
  sorted = []

  return list if n <= 1

  first_half = merge_sort(list[0...n/2])
  second_half = merge_sort(list[n/2..-1])

  until first_half.empty? || second_half.empty?
    if first_half.first < second_half.first
      sorted << first_half.first
      first_half.delete(first_half.first)
    else
      sorted << second_half.first
      second_half.delete(second_half.first)
    end
  end

  first_half.each{ |remaining_item| sorted << remaining_item}
  second_half.each{ |remaining_item| sorted << remaining_item}
  sorted
end

p merge_sort([1, 2, 3, 4, 5, 6])
p merge_sort([6, 7, 45, 78, 72, 47, 103, 1675, 20, 43, 12, 4, 7009, 6, 5, 4, 3, 2, 1])
p merge_sort(["apple", "bear", "orange", "apricot", "applebees", "chicken"])
p merge_sort(["hello hi there", "hi"])
p merge_sort(["suzy sold sea shells down by the sea shore", "alex ate all apples", "peter piper piped pickles"])

large_array = (0..9999).to_a.sample(999)
p merge_sort(large_array)
