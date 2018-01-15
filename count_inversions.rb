#!/bin/ruby
class CountInversions
  def self.merge(left_sorted, right_sorted)
    res = []
    l = 0
    r = 0

    loop do
      break if r >= right_sorted.length and l >= left_sorted.length

      if r >= right_sorted.length or (l < left_sorted.length and left_sorted[l] < right_sorted[r])
        res << left_sorted[l]
        l += 1
      else
        res << right_sorted[r]
        r += 1
      end
    end

    return res
  end

  def self.merge_sort(array_sliced)
    return array_sliced if array_sliced.length <= 1

    mid = array_sliced.length/2 - 1
    left_sorted = merge_sort(array_sliced[0..mid])
    right_sorted = merge_sort(array_sliced[mid+1..-1])
    merge(left_sorted, right_sorted)
  end

  def self.count(arr)
    merge_sort(arr)
    return "0"
  end
end

t = gets.strip.to_i
for a0 in (0..t-1)
  n = gets.strip.to_i
  arr = gets.strip
  arr = arr.split(' ').map(&:to_i)
  puts CountInversions.count(arr)
end
